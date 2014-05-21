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
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/index.css">
  <link rel="stylesheet" href="css/icons/foundation-icons.css">
  <script src="http://www.openlayers.org/api/OpenLayers.js"></script>
  
  <link rel="shortcut icon" href="img/LogoSigla.png">
 </head>

 <body>
  <?php include "./inc/header.inc.php"; ?>
    <div id="maps"></div>

      <div id="container">

        <div class = "central">
            <h2 id = "slogan"><?=$GLOBALS['dict']->slogan->{$_SESSION['lang']}; ?></h2>
                <input type="text" placeholder="<?=$GLOBALS['dict']->wtoeat->{$_SESSION['lang']}; ?>">
                <input type="text" placeholder="<?=$GLOBALS['dict']->wisp->{$_SESSION['lang']}; ?>">
            <a href="#"><i class = "fi-magnifying-glass">&nbsp;</i></a>
        </div>
   
      </div>
 <?php include "./inc/footer.inc.php"; ?>

    <!--<script type="text/javascript">
map = new OpenLayers.Map("maps", {controls:[]});
var mapnik = new OpenLayers.Layer.OSM();
var fromProjection = new OpenLayers.Projection("EPSG:4326");
var toProjection = new OpenLayers.Projection("EPSG:900913");
var latitude = 11.1261;
var longitude = 46.0605;

var lati, longi;

navigator.geolocation.getCurrentPosition(function(position){
lati = position.coords.latitude;
longi = position.coords.longitude;
});

var position = new OpenLayers.LonLat(lati, longi).transform(fromProjection, toProjection);
var zoom = 12;
map.addLayer(mapnik);
map.setCenter(position, zoom);

var geolocate = new OpenLayers.Control.Geolocate({
bind: false,
geolocationOptions: {
enableHighAccuracy: false,
maximumAge: 0,
timeout: 7000
}
});

map.addControl(geolocate);
</script>-->

    <script type="text/javascript"> //geolocalization working
        map = new OpenLayers.Map("maps", {controls:[]});
        var mapnik = new OpenLayers.Layer.OSM();
        //var markers = new OpenLayers.Layer.Markers("Markers");
        
        map.addLayer(mapnik);
        map.setCenter(new
              OpenLayers.LonLat(11.1261,46.0605)
                .transform(
                  new OpenLayers.Projection("EPSG:4326"),
                  new OpenLayers.Projection("EPSG:900913")),
                  13
         );

        //map.addLayer(markers);
        var pos = new OpenLayers.Marker(0,0);
        //markers.addMarker(pos);
                        
        navigator.geolocation.watchPosition(function(position) {
            var lonLat = new OpenLayers.LonLat(position.coords.longitude, position.coords.latitude)
                      .transform(new OpenLayers.Projection("EPSG:4326"), map.getProjectionObject());
            
            markers.clearMarkers();
            markers.addMarker(new OpenLayers.Marker(lonLat));
            map.setCenter(lonLat, 13);
        });
    </script>


 </body>
</html>
