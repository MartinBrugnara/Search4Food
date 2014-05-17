map = new OpenLayers.Map("maps");
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

/*
var iconFeature = new OpenLayers.Feature({
  geometry: new OpenLayers.geom.Point([latitude, longitude]),
  name: 'Restaurant',
});

var iconStyle = new OpenLayers.style.Style({
  image: new OpenLayers.style.Icon(({
    anchor: [latitude, longitude],
    anchorXUnits: 'fraction',
    anchorYUnits: 'pixels',
    opacity: 0.75,
    src: 'img/pizza.svg'
  }))
});

iconFeature.setStyle(iconStyle);

var vectorSource = new OpenLayers.source.Vector({
  features: [iconFeature]
});

var vectorLayer = new OpenLayers.layer.Vector({
  source: vectorSource
});

var rasterLayer = new OpenLayers.layer.Tile({
  source: new OpenLayers.source.TileJSON({
    url: 'http://api.tiles.mapbox.com/v3/mapbox.geography-class.jsonp'
  })
});

map = new OpenLayers.Map({
  layers: [rasterLayer, vectorLayer],
  target: document.getElementById('maps'),
  view: new OpenLayers.View2D({
    center: [latitude, longitude],
    zoom: 12
  })
});

/*POPUP WHEN POI IS CLICKED
var element = document.getElementById('popup');

var popup = new ol.Overlay({
  element: element,
  positioning: 'bottom-center',
  stopEvent: false
});
map.addOverlay(popup);

// display popup on click
map.on('click', function(evt) {
  var feature = map.forEachFeatureAtPixel(evt.pixel,
      function(feature, layer) {
        return feature;
      });
  if (feature) {
    var geometry = feature.getGeometry();
    var coord = geometry.getCoordinates();
    popup.setPosition(coord);
    $(element).popover({
      'placement': 'top',
      'html': true,
      'content': feature.get('name')
    });
    $(element).popover('show');
  } else {
    $(element).popover('destroy');
  }
});

// change mouse cursor when over marker
$(map.getViewport()).on('mousemove', function(e) {
  var pixel = map.getEventPixel(e.originalEvent);
  var hit = map.forEachFeatureAtPixel(pixel, function(feature, layer) {
    return true;
  });
  if (hit) {
    map.getTarget().style.cursor = 'pointer';
  } else {
    map.getTarget().style.cursor = '';
  }
});
*/