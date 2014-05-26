$(function(){
  var markerL = window.map.getLayer('X');

  // DARK MAGIC
  var fP = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
  var tP = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection
  // get loc
  var lat = parseFloat($.find('input[name=lat]').val());
  var lon = parseFloat($.find('input[name=long]').val());

  // get loc
  var loc = new OpenLayers.LonLat(lon, lat).transform(fP, tP);

  // create marker
  var m = new OpenLayers.Marker(loc);
  markerL.addMarker(m);

  // center map
  window.map.setCenter(loc, 14);
});


