<?php
function connect() {
  $db_host = 'didattica.science.unitn.it';

  $num = '129';

  $db_name = 'db_sweng'.$num;
  $db_user = 'sweng'.$num;
  $db_pass = 'sweng'.$num.'abc';

  $srv = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
  if ($srv->connect_errno)
    die('[EE] DB connection error: '.mysqli_error($link));
  return $srv;
}

?>
