<?php

  include_once('libs/db.php');
  include_once('libs/core.php');

  $place_id = intval($_POST['place_id']);
  $rating = intval($_POST['rating']);
  $comment = $_POST['comment'];

  insert_rate($place_id, $rating, $comment);

  header("Location: info.php?place_id=".$place_id);

?>

