<?php 
  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict(); 

  include_once('libs/db.php');
  include_once('libs/core.php');

  $locations = get_loc_ratings();
  $comments = get_all_ratings();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">  
    <title>Home</title>
    <link rel="shortcut icon" href="img/favicon.png">
    <link rel="stylesheet" href="static/css/style.css">

    <link rel="stylesheet" href="static/css/foundation-icons.css">

    <link rel="stylesheet" href="static/css/modal.css">
    <link rel="stylesheet" href="static/css/rating.css">

    <link rel="stylesheet" href="static/css/home.css">
  </head>
  <body>
    <?php include "./inc/header.inc.php"; ?>

    <div class="central">
      <section id="locations">
        <!-- order by func -->
        <!-- TODO: do via javascript -->
        <div class="orderby">   
          <?=$GLOBALS['dict']->sort_by->{$_SESSION['lang']}?>
          <input type="radio" name="sort" value="ratings"><?=$GLOBALS['dict']->ratings->{$_SESSION['lang']}?>
          <input type="radio" name="sort" value="distance"><?=$GLOBALS['dict']->distance->{$_SESSION['lang']}?>
          &nbsp;&nbsp;
          <i class="fi-widget" onclick="modal_open('advanced_search')">&nbsp;</i>
        </div>   
        <?php var_dump($locations); ?>
        <?php foreach($locations as $i => &$loc): ?>
        <section class="location">
          <!-- Name + rating -->
          <span class="rating" data-stars="<?=$loc->rating?>">
          <a href="/info.php?loc_id=<?=$loc->place_id?>"><?=$loc->name?></a>
          </span>

          <!-- Location Picture -->
          <div style="float:left"><img src="<?=$loc->picture_url?>" alt="location picture"></div>

          <!-- location coords -->
          <input type="hidden" name="long" value="<?= $loc->long ?>">
          <input type="hidden" name="lat" value="<?= $loc->lat ?>">

          <!-- Descrizione -->
          <?=$loc->description?>

          <!-- Comments -->
          <section class="clear comments">
            <?php foreach($comments[$loc->loc_id] as $c): ?>
            <p>
              <span class="rating author" data-starts="<?=$c->rating?>"><a href="profile.php?user_id=<?=$c->user_id?>"><?=$c->name?></a></span><br>
              <?=$c->comment?>
            </p>
            <?php endforeach; ?>
          </section>

        </section>
        <?php endforeach; ?>

      <!-- location end, map start -->
      </section><div id="maps"></div>
    </div> <!-- central end -->

    <!-- MODAL WINDOW -->
    <!-- TODO: update this modal & it's style -->
    <div class="modal" id="advanced_search">
      <section>
        <header>
          <!-- put here the title -->
          <?=$GLOBALS['dict']->advance_search->{$_SESSION['lang']}?>
          <a href="#" class="close"><i class="fi-x-circle">&nbsp;</i></a>
        </header>

        <!-- preferences -->
        <section name="preferences">
          <section name="purpose">
            <form action="">
              <fieldset>
<<<<<<< HEAD
                <legend><h3 id="boh">Luogo</h3></legend><br>
                <input type="checkbox" name="pizzeria" value="pizzeria"/> Pizzeria
                <br/> 
                <input type="checkbox" name="ristorante" value="ristorante"/> Ristorante 
                <br/>
                <input type="checkbox" name="fastfood" value="fastfood"/> Fast-food 
                <br/>
                <input type="checkbox" name="casa" value="casa"/> Take-away 
=======
                <legend><?=$GLOBALS['dict']->services->{$_SESSION['lang']}?></legend>
                <input type="checkbox" name="pizzeria" value="pizzeria"/>
                <?=$GLOBALS['dict']->pizzeria->{$_SESSION['lang']}?>
                <br/> 
                <input type="checkbox" name="ristorante" value="ristorante"/>
                <?=$GLOBALS['dict']->restaurant->{$_SESSION['lang']}?>
                <br/>
                <input type="checkbox" name="fastfood" value="fastfood"/>
                <?=$GLOBALS['dict']->fast_food->{$_SESSION['lang']}?>
                <br/>
                <input type="checkbox" name="casa" value="casa"/>
                <?=$GLOBALS['dict']->home->{$_SESSION['lang']}?>
>>>>>>> FETCH_HEAD
              </fieldset>
            </form>
          </section><section name="food">
            <form action="#">
              <fieldset>
<<<<<<< HEAD
              <legend><h3>Occasione</h3></legend><br>
                <input type="checkbox" name="friends" value="Friends"/> Friends
=======
                <legend> <?=$GLOBALS['dict']->purpose->{$_SESSION['lang']}?></legend>
                <input type="checkbox" name="friends" value="Friends"/>
                <?=$GLOBALS['dict']->friend->{$_SESSION['lang']}?>
>>>>>>> FETCH_HEAD
                <br/> 
                <input type="checkbox" name="romantic" value="Romantic"/>
                <?=$GLOBALS['dict']->romantic->{$_SESSION['lang']}?>
                <br/>
                <input type="checkbox" name="family" value="Family"/>
                <?=$GLOBALS['dict']->family->{$_SESSION['lang']}?>
                <br/>
                <input type="checkbox" name="alone" value="Alone"/>
                <?=$GLOBALS['dict']->sadly_alone->{$_SESSION['lang']}?>
              </fieldset>
            </form>
          </section><section name="purpose">
            <form action="">
              <fieldset>
                <legend><h3>Cucina</h3></legend><br>
                <input type="checkbox" name="italian" value="cousine"/>Italiana
                <br/> 
                <input type="checkbox" name="Japanese" value="cousine"/>Giapponese 
                <br/>
                <input type="checkbox" name="Mexican" value="cousine"/>Messicana
                <br/>
                <input type="checkbox" name="Spanish" value="cousine"/>Spagnola 
              </fieldset>
            </form>
          </section>
        </section>
      </section>
    </div> 
    <!-- MODAL END -->

    <?php include "./inc/footer.inc.php"; ?>

    <script src="http://www.openlayers.org/api/OpenLayers.js"></script>
    <script type="text/javascript" src="static/js/modal.js"></script>
    <script type="text/javascript" src="static/js/map.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="static/js/home.js"></script>
  </body>
</html>
