<?php
// TODO: write db conf
$db_host = '';
$db_user = '';
$db_pass = '';
$db_name = '';

function connect() {
  $srv = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
  if ($srv->connect_errno)
    die('[EE] DB connection error: '.mysqli_error($link));
  return $srv;
}

?>
