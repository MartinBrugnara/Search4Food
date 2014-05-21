<?php 
  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict(); 
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

    <!-- TODO: remove debug -->
    Debug: current_lang: <?= $_SESSION['lang'] ?>
    Debug: get_lang: <?= $_GET['lang'] ?>
<?=$_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];?>
<br><br>
<?=$_SERVER["SCRIPT_NAME"]?>

    <div class="central">
      <section id="locations">
        <div class="orderby">   
          Sort by:
          <input type="radio" name="sort" value="ratings">Ratings
          <input type="radio" name="sort" value="distance">Distance
          &nbsp;&nbsp;
          <i class="fi-widget" onclick="modal_open('my_modal')">&nbsp;</i>
        </div>   

        <!-- item start -->
        <section class="location">
          <span class="rating" data-stars="3">
            <a href="info.html">Pizzeria Albert</a>
            <!-- Questo è solo un esempio -->
          </span>
          <div style="float:left"><img src="img/alleghe.png" alt="alleghe"></div>
          <!-- descrizione -->
          <p>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod."</p>
          <p>"Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip"</p>
          <p>"Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod."</p>

          <!-- comments -->
          <section class="clear">

            <br>
          </section>
        </section>
        <!-- item end -->

        <!-- item start -->
        <section class="location">
          <span class="rating" data-stars="3">
            <a href="javascript:modal_open('my_modal1')">Pizzeria Albert</a>
          </span>
          <div style="float:left"><img src="img/alleghe.png" alt="alleghe"></div>
          <h4>Descrizione</h4>
          <!-- descrizione -->
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

          <!-- comments -->
          <section class="clear">
            <span data-lat="23.432N">Lat: 23.432N</span>
            <span data-lon="72.000E">Long: 72.000E</span>
            <br>

            Comments:
            <ul class="comments">
              <li>Bello</li>
              <li>Na merda</li>
              <li> hdwadhwajdhwa </li>
            </ul>
          </section>
        </section>
        <!-- item end -->

        <!-- item start -->
        <section class="location">
          <span class="rating" data-stars="3">
            <a href="javascript:modal_open('my_modal1')">Pizzeria Albert</a>
          </span>
          <div style="float:left"><img src="img/alleghe.png" alt="alleghe"></div>
          <h4>Slogan location</h4>
          <!-- descrizione -->
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

          <!-- comments -->
          <section class="clear">
            <span data-lat="23.432N">Lat: 23.432N</span>
            <span data-lon="72.000E">Long: 72.000E</span>
            <br>

            Comments:
            <ul class="comments">
              <li>Bello</li>
              <li>Na merda</li>
              <li> hdwadhwajdhwa </li>
            </ul>
          </section>
        </section>
        <!-- item end -->

        <!-- item start -->
        <section class="location">
          <span class="rating" data-stars="3">
            <a href="javascript:modal_open('my_modal1')">Pizzeria Albert</a>
          </span>
          <div style="float:left"><img src="img/alleghe.png" alt="alleghe"></div>
          <h4>Slogan location</h4>
          <!-- descrizione -->
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.

          <!-- comments -->
          <section class="clear">
            <span data-lat="23.432N">Lat: 23.432N</span>
            <span data-lon="72.000E">Long: 72.000E</span>
            <br>

            Comments:
            <ul class="comments">
              <li>Bello</li>
              <li>Na merda</li>
              <li> hdwadhwajdhwa </li>
            </ul>
          </section>
        </section>
        <!-- item end -->
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
