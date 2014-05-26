$(function(){
  var markerL = window.map.getLayer('X');

  // DARK MAGIC
  var fP = new OpenLayers.Projection("EPSG:4326");   // Transform from WGS 1984
  var tP = new OpenLayers.Projection("EPSG:900913"); // to Spherical Mercator Projection

  var factory = function (a) {
    return function() {
      var l = a;
      document.location.href = l;
    };
  }

  $(".location").each(function(i, e){
    // get location info
    var e = $(e);
    var name = e.find('a').text();
    var link = e.find('a').attr('href');
    var lat = parseFloat(e.find('input[name=lat]').val());
    var lon = parseFloat(e.find('input[name=long]').val());

    // get loc
    var loc = new OpenLayers.LonLat(lon, lat).transform(fP, tP);

    // create marker
    var m = new OpenLayers.Marker(loc);

    // add redirect to location
    // http://forum.openstreetmap.org/viewtopic.php?id=5537
    var callback = factory(link);
    m.events.register('click', m, callback);

    markerL.addMarker(m);
  });
});
