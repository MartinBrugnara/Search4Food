(function(){
  var map = new OpenLayers.Map("maps");
  var mapnik = new OpenLayers.Layer.OSM();
  var fromProjection = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
  var toProjection = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection
  var latitude = 11.1261;
  var longitude = 46.0605;
  var position = new OpenLayers.LonLat(latitude, longitude).transform(fromProjection, toProjection);
  var zoom = 12; 
  
  map.addLayer(mapnik);

  var markerslonLat = new OpenLayers.LonLat(latitude, longitude).transform(//add lon/lat poi
    new OpenLayers.Projection("EPSG:4326"), 
    map.getProjectionObject() 
  );
  
  var markers = new OpenLayers.Layer.Markers("Markers");//create marker
  map.addLayer(markers);//add marker to level
  markers.addMarker(new OpenLayers.Marker(markerslonLat));

  map.setCenter(position, zoom);
})();
