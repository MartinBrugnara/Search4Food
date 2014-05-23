<?php

function get_loc_ratings(){
  $result = mysql_query(
    "SELECT r.place_id, AVG(r.value) AS rating,p.picture_url,p.description,
    CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as loc,
    p.loc_latitude,p.loc_longitude
    FROM ratings r inner join places p ON r.place_id=p.place_id
    GROUP BY r.place_id;");

  $a[] = null;	
  while ($row = mysql_fetch_object($result))
    $a[]= $row; 

  mysql_free_result($result);	

  return $a;
}

function get_all_ratings() {

  $result = mysql_query("
    SELECT r.place_id, r.comment, u.name, r.value AS rating
    FROM ratings r INNER JOIN users u ON r.user_id=u.user_id;
  ");

  $a[] = null;	
  while ($row = mysql_fetch_object($result)) {
    if (!array_key_exists($row->place_id, $a))
      $a[$row->place_id] = array();
    $a[$row->place_id]= $row; 
  }

  mysql_free_result($result);	

  return $a;
}

function get_loc_info($loc_id) {

  $result = mysql_query("
      SELECT p.name,'NULL' as rating, p.place_id, CONCAT_WS(', ',p.loc_street, p.loc_city, p.loc_state) as addr,
          'NULL' as coord,p.picture_url as img_url, p.description
        FROM places p;
      ");

  $a[] = null;	
  while ($row = mysql_fetch_object($result))
    $a[]= $row; 

  mysql_free_result($result);	

  return $a;
}

function get_comments($loc_id) {

  $result = mysql_query("
      SELECT u.name, r.value as rating,r.comment
      FROM users u INNER JOIN ratings r ON u.user_id=r.user_id;
      ");

  $a[] = null;	
  while ($row = mysql_fetch_object($result))
    $a[]= $row; 

  mysql_free_result($result);	

  return $a;
}

?>
