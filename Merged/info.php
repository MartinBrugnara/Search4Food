<?php 
  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict(); 

  include_once('libs/db.php');
  include_once('libs/core.php');

  $info = get_loc_info($_GET['loc_id']); 
  $comments = get_comments($_GET['loc_id']);
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">  
    <title><?= $info->name ?></title>

    <link rel="shortcut icon" href="static/img/favicon.png">
    <link rel="stylesheet" type="text/css" href="static/css/style.css">

    <!-- TODO: update once #026 is closed -->
    <link rel="stylesheet" type="text/css" href="static/css/foundation-icons.css">

    <link rel="stylesheet" type="text/css" href="static/css/rating.css">

    <link rel="stylesheet" type="text/css" href="static/css/info.css">
  </head>
  <body>
    <?php include "./inc/header.inc.php"; ?>

    <div class="central">
      <span class="rating" data-stars="<?= $info->rating ?>" id="name"><?= $info->name ?></span>
      <div class="sx">
        <p id="address"><?= $info->addr ?></p>
        <img src="<?= $info->img_url ?>" id="location_img" alt="location_img" class="left">
        <p id="wware">We are here:</p>
        <div id="maps"></div>

      </div><div class="data">
        <!-- description -->
        <p id="description"><?= $info->description ?></p> 
        <br>

        <!-- comments -->
        <p id="tau">Tell about us:<p>
        <div class="comments">
          <?php foreach ($comments as &$cm): ?>
          <div>
            <span class="rating" data-stars="<?=$cm->rating?>"><?=$cm->name?></span> 
            <p><?=$cm->comment?></p>
          </div>
          <br>
          <?php endforeach; ?>
        </div>       

        <!-- write comment -->
        <form action="/rate.php" method="POST">
          <legend>Leave a comment:</legend>
          <input type="hiddend" name="loc_id" value="<?=$info->loc_id?>">

          <br>
          <input type="radio" name="rating" value="5">excellent</input>
          <input type="radio" name="rating" value="4">very good</input>
          <input type="radio" name="rating" value="3">good</input>
          <input type="radio" name="rating" value="2">bad</input>
          <input type="radio" name="rating" value="1">vary bad</input>

          <br>
          <textarea name="comment" rows="6" cols="50"></textarea>
          <button type="submit">comment</button>
        </form>
      </div> <!-- end data -->
    </div> <!-- end central -->

    <?php include "./inc/footer.inc.php"; ?>

    <script type="text/javascript" src="http://www.openlayers.org/api/OpenLayers.js"></script>
    <script type="text/javascript" src="static/js/map.js"></script>
  </body>
</html>
