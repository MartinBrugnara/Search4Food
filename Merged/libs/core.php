<?php
 
/* plain query with mysqli */
function Q($query){
  $srv = connect();
  if (!$result = $srv->query($query)) {
    printf("<!-- DB ERROR: This query is broken: \\ $query \\ -->");
    return array();
  }


  $a = array();	
  while ($row = $result->fetch_object())
    $a[]= $row; 

  $result->close();
  $srv->close();
  return $a;
}

function home_locations($wheat, $whent){
  $srv = connect();
  $whent="%".$whent;
  $stmt = $srv->prepare("SELECT r.place_id, p.name, AVG(r.value) AS rating,p.picture,
    p.description, CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as loc,
    p.loc_latitude AS lat, p.loc_longitude AS \"long\", p.loc_city
    FROM ratings r INNER JOIN purpose k ON r.purpose_id=k.purpose_id
    INNER JOIN places p ON r.place_id=p.place_id
    WHERE p.loc_city LIKE ? AND k.name LIKE ? GROUP BY r.place_id;");
  $stmt->bind_param("ss", $wheat, $whent);
  $stmt->execute();

  // bind results to named array
  $rows = array();
  $meta = $stmt->result_metadata();
  $fields = $meta->fetch_fields();
  foreach($fields as $field) {
    $result[$field->name] = "";
    $resultArray[$field->name] = &$result[$field->name];
  }

  call_user_func_array(array($stmt, 'bind_result'), $resultArray);

  // create object of results and array of objects
  while($stmt->fetch()) {
    $resultObject = new stdClass();

    foreach ($resultArray as $key => $value) {
      $resultObject->$key = $value;
    }

    $rows[] = $resultObject;
  }

  $stmt->close();
  return $rows;
}

function home_comments() {
  $qres = Q("
    SELECT r.place_id, r.comment, u.user_id, u.name, u.email, r.value AS rating
    FROM ratings r INNER JOIN users u ON r.user_id=u.user_id
    ORDER BY r.creation_time DESC
    ;
  ");

  $res = array();
  foreach ($qres as $i => &$r) {
    if (!array_key_exists($r->place_id, $res))
      $res[$r->place_id] = array();
    else if (count($res[$r->place_id]) < 5)
      array_push($res[$r->place_id], $r);
  }
  return $res;
}

// INFO
function info_get($loc_id) {

  return Q("
    SELECT p.name, AVG(r.value) as rating, p.place_id, 
      CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as addr,
      p.loc_latitude AS lat, p.loc_longitude AS \"long\", p.picture as img_url, p.description
    FROM places p INNER JOIN ratings r ON p.place_id=r.place_id
    WHERE p.place_id = ".intval($loc_id).";");
}

function info_comments($loc_id) {
  return Q("
    SELECT u.user_id, u.name, u.email, r.value as rating, r.comment
    FROM users u INNER JOIN ratings r ON u.user_id=r.user_id
    WHERE r.place_id = ".intval($loc_id));
}

function insert_rate($loc_id, $rating, $comment) {
  $srv = connect();
  
  $stmt = $srv->prepare("INSERT INTO ratings (place_id, user_id, value, comment, creation_time) VALUES (?, ?, ?, ?, NOW());");
  $stmt->bind_param("i", $loc_id);
  $stmt->bind_param("i", $_SESSION['user_id']);
  $stmt->bind_param("i", $rating);
  $stmt->bind_param("s", $comment);
  $stmt->execute();
  $stmt->close();
  $srv->close();
}

// PROFILE
function profile_get($user_id) {
  return Q("SELECT name, bday as birth_date, gender, 
    email, loc_city as addr, first_login,
    trustful as rating,'NULL' as picture
    FROM users WHERE user_id = ".intval($user_id)                    
  );
}

function profile_locations($user_id) {
  return Q("SELECT p.name, r.value as rating, 
      p.place_id, p.picture,
      CONCAT_WS(', ', p.loc_street, p.loc_city, p.loc_state) as addr
    FROM users u 
      INNER JOIN ratings r ON u.user_id=r.user_id
      INNER JOIN places p ON r.place_id=p.place_id
    WHERE u.user_id = ".intval($user_id)."
    ORDER BY r.creation_time DESC
    LIMIT 20    
  ");
}

function profile_comments($user_id) {
  $qres = Q("
    SELECT r.place_id, r.comment, u.user_id, u.name, u.email, r.value AS rating
    FROM ratings r 
    INNER JOIN users u ON r.user_id=u.user_id
    JOIN (
      SELECT p.place_id
      FROM users u 
        INNER JOIN ratings r ON u.user_id = r.user_id
        INNER JOIN places p ON r.place_id = p.place_id
      WHERE u.user_id = ".intval($user_id)."
      ORDER BY r.creation_time DESC
      LIMIT 20 
    ) AS S ON S.place_id = r.place_id
    ORDER BY r.creation_time DESC;");

  $res = array();
  foreach ($qres as $i => &$r) {
    if (!array_key_exists($r->place_id, $res))
      $res[$r->place_id] = array();
    else if (count($res[$r->place_id]) < 5)
      array_push($res[$r->place_id], $r);
  }
  return $res;
}
?>
