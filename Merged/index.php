<?php
  include_once('libs/Utils.php');
  Utils::update_env();
  Utils::load_dict();
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
        
        <form action="" method="post">
          <input type="text" placeholder="<?=$GLOBALS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
          <input type="text" placeholder="<?=$GLOBALS['dict']->wisp->{$_SESSION['lang']}; ?>">
          <a href="#"><button type="submit" class="fi-magnifying-glass">&nbsp;</i></a>
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
