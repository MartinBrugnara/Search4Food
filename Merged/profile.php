<?php 
  if (!isset($_GET['user_id'])) {
    print("Please specify an user_id");
    exit;
  }
    

  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict(); 

  include_once('libs/db.php');
  include_once('libs/core.php');

  $u = get_profile($_GET['user_id']);
  $locations = get_recent_loc();
  $comments = get_recent_loc_comm();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">  
    <title>Profile: <?= $u->name ?></title>

    <link rel="shortcut icon" href="img/favicon.png">
    <link rel="stylesheet" href="static/css/style.css">

    <link rel="stylesheet" href="static/css/foundation-icons.css">

    <link rel="stylesheet" href="static/css/modal.css">
    <link rel="stylesheet" href="static/css/rating.css">

    <link rel="stylesheet" href="static/css/profile.css">
  </head>
  <body>
    <?php include "./inc/header.inc.php"; ?>

    <section class="content">
      <!-- USER PROFILE -->
      <div class="profile" >
        <span class="rating" data-stars="<?= $u->rating ?>" id="name"><?= $u->name ?></span>
        <img src="<?= $u->img_url ?>" id="profile_photo" alt="Profile photo"> 
        <ul>
          <li><span>$GLOBALS['dict']->born->{$_SESSION['lang'])</span><?= $u->birth_date ?></li>
          <li><span>$GLOBALS['dict']->gender->{$_SESSION['lang'])</span><?= $u->gender ?></li>
          <li><span>$GLOBALS['dict']->e_mail->{$_SESSION['lang'])</span><?= $u->email ?></li>
          <li><span>$GLOBALS['dict']->location->{$_SESSION['lang'])</span><?= $u->addr ?></li>
          <li><span>$GLOBALS['dict']->first_login->{$_SESSION['lang'])</span><?= $u->first_login ?></li>
        </ul>

      </div><div class="preference">

      <!-- USER PREFERENCES -->
        <!-- TODO: WTF I should do here? -->
        <!-- preferences -->
        <section name="main_preferences">
          <p class="title">$GLOBALS['dict']->preferences->{$_SESSION['lang'])</p>
          <section name="purpose">
            <h4 class="tag">$GLOBALS['dict']->occasion->{$_SESSION['lang'])</h4>
            <ul>
              <li>$GLOBALS['dict']->friends->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->romantic->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->family->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->work->{$_SESSION['lang'])</li>
            </ul>
          </section><section name="tag">
            <h4 class="tag">$GLOBALS['dict']->place->{$_SESSION['lang'])</h4>
            <ul>
              <li>$GLOBALS['dict']->restaurant->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->pizzeria->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->take_away->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->fast_food->{$_SESSION['lang'])</li>
            </ul>
          </section><section name="cousine">
            <h4 class="tag">$GLOBALS['dict']->cousine->{$_SESSION['lang'])</h4>
            <ul>
              <li>$GLOBALS['dict']->italian->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->japanese->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->mexican->{$_SESSION['lang'])</li>
              <li>$GLOBALS['dict']->spanish->{$_SESSION['lang'])</li>
            </ul>
          </section>
        </section> <!-- END main_preferences -->

        <p class="title">$GLOBALS['dict']->recent_places->{$_SESSION['lang'])</p>

        <?php foreach($locations as $loc): ?>
        <!-- item start -->
        <section class="location">
          <span class="rating" data-stars="<?= $loc->rating ?>">
            <a href="/info.php?place_id=<?= $loc->place_id ?>" class="loc_info_link">
              <?= $loc->name ?>
            </a>
          </span>
          <div class="address"><?= $loc->addr ?></div>
          <div class="fleft"><img src="<?= $loc->img_url ?>" alt="location img"></div>
            
          <?php foreach($comments[$loc->place_id] as $c): ?>
            <p><?= $c ?></p>
          <?php endforeach; ?>

          <section class="clear">&nbsp;<!-- valign hack --></section>
        </section>
        <!-- item end -->
        <?php endforeach; ?>
      </div>
    </section>

    <?php include "./inc/footer.inc.php"; ?>
  </body>
</html> 