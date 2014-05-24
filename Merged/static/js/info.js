$(function(){
  // get loc
  var lat = parseInt($.find('input[name=lat]').val());
  var lon = parseInt($.find('input[name=long]').val());

  // create marker
  var OSMloc = new OpenLayers.LonLat(lat, lat).transform(
    new OpenLayers.Projection("EPSG:4326"), // transform from WGS 1984
    window.map.getProjectionObject()); // to Spherical Mercator Projection
  var m = new OpenLayers.Marker(OSMloc);
  window.markers.addMarker(m);

  // center map
  window.map.setCenter(m, 14);
});


