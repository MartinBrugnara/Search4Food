<?php
  include_once('libs/Utils.php');
  include_once('libs/db.php');
  include_once('libs/core.php');
  Utils::update_env();
  Utils::load_dict();

  $where = index_where();
  $when = index_when();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Search4Food</title>
    <link rel="stylesheet" type="text/css" href="static/css/style.css">
    <link rel="stylesheet" type="text/css" href="static/css/index.css">
    <link rel="stylesheet" type="text/css" href="static/css/foundation-icons.css">

    <link rel="shortcut icon" href="static/img/favicon.png">
  </head>
  <body>
    <?php include "./inc/header.inc.php"; ?>

    <!-- BG map -->
    <div id="maps"></div>

    <!-- main container -->
    <div id="container">
      <div class="central">
        <h2 id="slogan">
          <?=$GLOBALS['dict']->slogan->{$_SESSION['lang']}?>
          <span id="cite">-Woody Allen-</span>
        </h2>
        
        <form action="home.php" method="post" id="search_form">
          <input type="text" list="lst_where" name="wheat" placeholder="<?=$GLOBALS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
          <datalist id="lst_where">
            <?php foreach($where as $i => &$e): ?>
              <option value="<?=$e->loc?>">
            <?php endforeach; ?>
          </datalist>
          <input type="text" list="lst_when" name="whent" placeholder="<?=$GLOBALS['dict']->wisp->{$_SESSION['lang']}; ?>">
          <datalist id="lst_when">
            <?php foreach($when as $i => &$e): ?>
              <option value="<?=$e->w?>">
            <?php endforeach; ?>
          </datalist>
          <a href="javascript:document.getElementById('search_form').submit()"><i class="fi-magnifying-glass">&nbsp;</i></a>
        </form>

      </div>
    </div>

    <!-- footer -->
    <?php include "./inc/footer.inc.php"; ?>

    <!-- geoloc script -->
    <script src="http://www.openlayers.org/api/OpenLayers.js"></script>
    <script type="text/javascript"> //geolocalization working
      (function(){
        var map = new OpenLayers.Map("maps", {controls:[]});
        var mapnik = new OpenLayers.Layer.OSM();

        map.addLayer(mapnik);
        map.setCenter(new OpenLayers.LonLat(11.1261,46.0605).transform(
            new OpenLayers.Projection("EPSG:4326"),
            new OpenLayers.Projection("EPSG:900913")
          ), 13);

        var pos = new OpenLayers.Marker(0,0);

        navigator.geolocation.watchPosition(function(position) {
          var lonLat = new OpenLayers
            .LonLat(position.coords.longitude, position.coords.latitude)
            .transform(new OpenLayers.Projection("EPSG:4326"), 
              map.getProjectionObject());
          map.setCenter(lonLat, 13);
        });
      })();
    </script>
  </body>
</html>
