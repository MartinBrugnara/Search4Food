<?php 
  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict(); 

  include_once('libs/db.php');
  include_once('libs/core.php');

  $u = get_profile();
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
          <li><span>Date of Birth:</span><?= $u->birth_date ?></li>
          <li><span>Gender:</span><?= $u->gender ?></li>
          <li><span>Email:</span><?= $u->email ?></li>
          <li><span>Location:</span><?= $u->addr ?></li>
          <li><span>First login:</span><?= $u->first_login ?></li>
        </ul>

      </div><div class="preference">

      <!-- USER PREFERENCES -->
        <!-- TODO: WTF I should do here? -->
        <!-- preferences -->
        <section name="main_preferences">
          <p class="title">Preferenze</p>
          <section name="purpose">
            <h4 class="tag">Occasione</h4>
            <ul>
              <li>Friends</li>
              <li>Romantic</li>
              <li>Family</li>
              <li>Work</li>
            </ul>
          </section><section name="tag">
            <h4 class="tag">Luogo</h4>
            <ul>
              <li>Ristorante</li>
              <li>Pizzeria</li>
              <li>Take-away</li>
              <li>Fast-Food</li>
            </ul>
          </section><section name="cousine">
            <h4 class="tag">Cucina</h4>
            <ul>
              <li>Italiana</li>
              <li>Giapponese</li>
              <li>Messicana</li>
              <li>Spagnola</li>
            </ul>
          </section>
        </section> <!-- END main_preferences -->

        <p class="title"> Posti visitati recentemente</p>

        <?php foreach($locations as $loc): ?>
        <!-- item start -->
        <section class="location">
          <span class="rating" data-stars="<?= $loc->rating ?>">
            <a href="/info.php?loc_id=<?= $loc->place_id ?>" class="loc_info_link">
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
