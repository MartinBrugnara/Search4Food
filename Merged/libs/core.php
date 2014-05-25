<?php
 
/* plain query with mysqli */
function Q($query){
  $srv = connect();
  $result = $srv->query($query);

  $a[] = null;	
  while ($row = $result->fetch_object())
    $a[]= $row; 

  $result->close();
  $srv->close();
  return $a;
}


function get_loc_ratings(){
  $query = "SELECT r.place_id, AVG(r.value) AS rating,p.picture_url,p.description,
    CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as loc,
    p.loc_latitude AS lat, p.loc_longitude AS long
    FROM ratings r inner join places p ON r.place_id=p.place_id
    GROUP BY r.place_id;";
  return Q($query);
}


function get_all_ratings() {
  return Q("
    SELECT r.place_id, r.comment, u.name, r.value AS rating
    FROM ratings r INNER JOIN users u ON r.user_id=u.user_id;
  ");
}

function get_loc_info($loc_id) {

  //TODO @Martin rating is the average of all ratings? i think yes;
  return Q("
    SELECT p.name,'NULL' as rating, p.place_id, 
    CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as addr,
    p.loc_latitude AS lat, p.loc_longitude AS long, p.picture_url as img_url, p.description
    FROM places p;
  WHERE places.place_id = ".intval($loc_id));
}

function get_comments($loc_id) {
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
    WHERE u.user_id = ".intval($user_id)          
  );
}

?>
