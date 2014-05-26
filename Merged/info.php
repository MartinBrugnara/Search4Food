<?php 
include_once('libs/Utils.php');
Utils::update_env();
Utils::load_dict(); 

include_once('libs/db.php');
include_once('libs/core.php');

$info = info_get($_GET['place_id']); 
$comments = info_comments($_GET['place_id']);
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">  
    <title><?= $info[0]->name ?></title>

    <link rel="shortcut icon" href="static/img/favicon.png">
    <link rel="stylesheet" type="text/css" href="static/css/style.css">

    <link rel="stylesheet" type="text/css" href="static/css/foundation-icons.css">

    <link rel="stylesheet" type="text/css" href="static/css/rating.css">

    <link rel="stylesheet" type="text/css" href="static/css/info.css">
  </head>
  <body>
    <?php include "./inc/header.inc.php"; ?>
    <div class="central">
      <span class="rating" data-stars="<?= round( $info[0]->rating) ?>" id="name"><?= $info[0]->name ?></span>
      <div class="sx">
        <p id="address"><?= $info[0]->addr ?></p>
        <img src="<?= $info[0]->img_url ?>" id="location_img" alt="location_img" class="left">

        <!-- location coords -->
        <input type="hidden" name="long" value="<?= $info[0]->long ?>">
        <input type="hidden" name="lat" value="<?= $info[0]->lat ?>">

        <div id="maps"></div>

      </div><div class="data">
        <!-- description -->
        <p id="description"><?= $info[0]->description ?></p> 
        <br>

        <!-- comments -->
        <p id="tau"><?$GLOBALS['dict']->say_something->{$_SESSION['lang']}?><p>
        <div class="comments">
          <?php foreach ($comments as $i => &$c): ?>
          <div>
            <span class="rating" data-stars="<?= round($c->rating)?>">
              <a href="profile.php?user_id=<?=$c->user_id?>">
                <?= strlen($c->name) ? trim($c->name, ' ') : (strlen($c->email) ? $c->email : "No name") ?>
              </a>
            </span> 
            <?php if (strlen($c->comment)): ?>
            <p class="txt">
              <?= $c->comment ?>
            </p>
            <?php endif; ?>
          </div>
          <br>
          <?php endforeach; ?>
        </div>       
 
        <!-- write comment -->
        <?php if($user): ?>
        <form action="/rate.php" method="POST">
        <legend><?=$GLOBALS['dict']->leave_comment->{$_SESSION['lang']}?></legend>
          <input type="hidden" name="place_id" value="<?=$info[0]->place_id?>">

          <br>
          <input type="radio" name="rating" value="5"><?=$GLOBALS['dict']->value_five->{$_SESSION['lang']}?></input>
          <input type="radio" name="rating" value="4"><?=$GLOBALS['dict']->value_four->{$_SESSION['lang']}?></input>
          <input type="radio" name="rating" value="3"><?=$GLOBALS['dict']->value_three->{$_SESSION['lang']}?></input>
          <input type="radio" name="rating" value="2"><?=$GLOBALS['dict']->value_two->{$_SESSION['lang']}?></input>
          <input type="radio" name="rating" value="1"><?=$GLOBALS['dict']->value_one->{$_SESSION['lang']}?></input>

          <br>
          <textarea name="comment" rows="6" cols="50"></textarea>
          <button type="submit"><?=$GLOBALS['dict']->comment->{$_SESSION['lang']}?></button>
        </form>
        <?php endif; ?>

      </div> <!-- end data -->
    </div> <!-- end central -->

    <?php include "./inc/footer.inc.php"; ?>

    <script type="text/javascript" src="http://www.openlayers.org/api/OpenLayers.js"></script>
    <script type="text/javascript" src="static/js/map.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/info.js"></script>
  </body>
</html>
