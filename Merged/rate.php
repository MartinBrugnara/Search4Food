<?php

  include_once('libs/db.php');
  include_once('libs/core.php');

  $loc_id = intval($_POST['loc_id']);
  $rating = intval($_POST['rating']);
  $comment = $_POST['comment'];

  insert_rate($loc_id, $rating, $comment);

  header("Location: info.php?loc_id=".$loc_id);

?>

