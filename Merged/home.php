<?php 
  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict(); 

  $locations = []; // call search function
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">  
    <title>Home</title>
    <link rel="shortcut icon" href="img/favicon.png">
    <link rel="stylesheet" href="static/css/style.css">

    <link rel="stylesheet" href="static/css/icons/foundation-icons.css">

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
          Sort by:
          <input type="radio" name="sort" value="ratings">Ratings
          <input type="radio" name="sort" value="distance">Distance
          &nbsp;&nbsp;
          <i class="fi-widget" onclick="modal_open('my_modal')">&nbsp;</i>
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

          <!-- comments -->
          <section class="clear">

            <br>
          </section>
        </section>
        <?php endforeach; ?>
      </section><div id="maps"></div>

    </div>

    <!--MODAL WINDOW -->
    <!-- change only id="" -->
    <div class="modal" id="my_modal">
      <section>
        <header>
          <!-- put here the title -->
          Ricerca avanzata
          <a href="#" class="close"><i class = "fi-x-circle">&nbsp;</i></a>
        </header>

        <!-- preferences -->
        <section name="preferences">
          <section name="purpose">
            <form action="">
              <fieldset>
                <legend>Servizi</legend>
                <input type="checkbox" name="pizzeria" value="pizzeria"/> pizzeria
                <br/> 
                <input type="checkbox" name="ristorante" value="ristorante"/> ristorante 
                <br/>
                <input type="checkbox" name="fastfood" value="fastfood"/> fastfood 
                <br/>
                <input type="checkbox" name="casa" value="casa"/> casa 
              </fieldset>
            </form>
          </section><section name="food">
            <form action="#">
              <fieldset>
                <legend> Scopo</legend>
                <input type="checkbox" name="friends" value="Friends"/> Friends
                <br/> 
                <input type="checkbox" name="romantic" value="Romantic"/> Romantic 
                <br/>
                <input type="checkbox" name="family" value="Family"/> Family
                <br/>
                <input type="checkbox" name="alone" value="Alone"/> Alone 
              </fieldset>
            </form>
          </section>
        </section>
      </section>
    </div> 

    <?php include "./inc/footer.inc.php"; ?>

    <script src="http://www.openlayers.org/api/OpenLayers.js"></script>
    <script type="text/javascript" src="js/modal.js"></script>
    <script type="text/javascript" src="js/map.js"></script>
  </body>
</html>
