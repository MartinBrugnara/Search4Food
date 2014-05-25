<?php
$db_host = 'db_sweng129';
$db_user = 'sweng129';
$db_pass = 'sweng129abc';
$db_name = 'didattica.science.unitn.it';

function connect() {
  $srv = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
  if ($srv->connect_errno)
    die('[EE] DB connection error: '.mysqli_error($link));
  return $srv;
}

?>
