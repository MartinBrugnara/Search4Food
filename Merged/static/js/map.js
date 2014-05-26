(function(){
  window.map = new OpenLayers.Map("maps");
  var mapnik = new OpenLayers.Layer.OSM();

  // magic
  var fromProjection = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
  var toProjection = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection

  // Trento coords
  var lon = 11.1261;
  var lat = 46.0605;

  var position = new OpenLayers.LonLat(lon, lat).transform(fromProjection, toProjection);
  var zoom = 13; 
  
  window.map.addLayer(mapnik);

  // inti markers sys
  var markers = new OpenLayers.Layer.Markers("Markers");//create marker
  markers.id = "X";
  window.map.addLayer(markers);//add marker to level

  // var m = new OpenLayers.Marker(position);
  // markers.addMarker(m);

  window.map.setCenter(position, zoom);
})();
