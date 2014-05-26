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


function home_locations(){
    $query = "SELECT r.place_id, p.name, AVG(r.value) AS rating,p.picture,
    p.description, CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as loc,
    p.loc_latitude AS lat, p.loc_longitude AS \"long\"
    FROM ratings r inner join places p ON r.place_id=p.place_id
    GROUP BY r.place_id;";
  return Q($query);
}


function home_comments() {
  $qres = Q("
    SELECT r.place_id, r.comment, u.user_id, u.name, u.email, r.value AS rating
    FROM ratings r INNER JOIN users u ON r.user_id=u.user_id;
  ");

  $res = array();
  foreach ($qres as $i => $r) {
    if (!in_array($r->place_id, $res))
      $res[$r->place_id] = array();
    $res[$r->place_id][] = $r;
  }
  return $res;
}

function info_get($loc_id) {

  //TODO @Martin rating is the average of all ratings? i think yes;
  return Q("
    SELECT p.name,'NULL' as rating, p.place_id, 
    CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as addr,
    p.loc_latitude AS lat, p.loc_longitude AS \"long\", p.picture as img_url, p.description
    FROM places p
  WHERE p.place_id = ".intval($loc_id).";");
}

function info_comments($loc_id) {
  return Q("
    SELECT u.user_id,u.name, r.value as rating,r.comment
    FROM users u INNER JOIN ratings r ON u.user_id=r.user_id;
  WHERE ratings.place_id = ".intval($loc_id));
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


function get_profile($user_id) {
  return Q("SELECT name,bday as birth_date,gender,email,loc_city as addr,
    first_login,trustful as rating,'NULL' as img_url
    FROM users
    WHERE user_id = ".intval($user_id)                    
  );
}

function get_recent_loc($user_id) {
  return Q(" SELECT p.name, r.value as rating,p.place_id,p.img_url,
    CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as addr
    FROM user u INNER JOIN ratings r ON u.user_id=r.user id
    INNER JOIN places p ON r.place_id=p.place_id
    WHERE u.user_id = ".intval($user_id)."
    ORDER BY r.creation_time DESC
    LIMIT 20    
  ");
}

?>
