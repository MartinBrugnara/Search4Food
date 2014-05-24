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

    <!-- TODO: update once #026 is closed -->
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

        <?php foreach($locations as $loc): ?>
        <section class="location">
          <!-- Name + rating -->
          <span class="rating" data-stars="<?=$loc->rating?>">
          <a href="/info.php?id=<?=$loc->place_id?>"><?=$loc->name?></a>
          </span>

          <!-- Location Picture -->
          <div style="float:left"><img src="<?=$loc->picture_url?>" alt="alleghe"></div>

          <!-- Descrizione -->
          <?=$loc->description?>

          <!-- Comments -->
          <section class="clear comments">
            <?php foreach($comments[$loc->loc_id] as $c): ?>
            <p>
              <span class="rating author" data-starts="<?=$c->rating?>"><?=$c->name?></span><br>
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
          Ricerca avanzata
          <a href="#" class="close"><i class="fi-x-circle">&nbsp;</i></a>
        </header>

        <!-- preferences -->
        <section name="preferences">
          <section name="purpose">
            <form action="">
              <fieldset>
                <legend><h3 id="boh">Luogo</h3></legend><br>
                <input type="checkbox" name="pizzeria" value="pizzeria"/> Pizzeria
                <br/> 
                <input type="checkbox" name="ristorante" value="ristorante"/> Ristorante 
                <br/>
                <input type="checkbox" name="fastfood" value="fastfood"/> Fast-food 
                <br/>
                <input type="checkbox" name="casa" value="casa"/> Take-away 
              </fieldset>
            </form>
          </section><section name="food">
            <form action="#">
              <fieldset>
              <legend><h3>Occasione</h3></legend><br>
                <input type="checkbox" name="friends" value="Friends"/> Friends
                <br/> 
                <input type="checkbox" name="romantic" value="Romantic"/> Romantic 
                <br/>
                <input type="checkbox" name="family" value="Family"/> Family
                <br/>
                <input type="checkbox" name="alone" value="Alone"/> Alone 
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
    <script type="text/javascript" src="/static/js/modal.js"></script>
    <script type="text/javascript" src="/static/js/map.js"></script>
  </body>
</html>
