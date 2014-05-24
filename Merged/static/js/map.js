(function(){
  window.map = new OpenLayers.Map("maps");
  var mapnik = new OpenLayers.Layer.OSM();

  // magic
  var fromProjection = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
  var toProjection = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection

  // Trento coords
  var latitude = 11.1261;
  var longitude = 46.0605;

  var position = new OpenLayers.LonLat(latitude, longitude).transform(fromProjection, toProjection);
  var zoom = 12; 
  
  window.map.addLayer(mapnik);

  // inti markers sys
  window.markers = new OpenLayers.Layer.Markers("Markers");//create marker
  window.map.addLayer(window.markers);//add marker to level

  window.map.setCenter(position, zoom);
})();
