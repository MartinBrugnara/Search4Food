$(function(){
  $(".location").each(function(i, e){
    // get location info
    var e = $(e);
    var name = e.find('a').text();
    var link = e.fins('a').attr('href');
    var lat = parseInt(e.find('input[name=lat]').val());
    var lon = parseInt(e.find('input[name=long]').val());

    // create marker
    var OSMloc = new OpenLayers.LonLat(lat, lat).transform(
      new OpenLayers.Projection("EPSG:4326"), // transform from WGS 1984
      window.map.getProjectionObject()); // to Spherical Mercator Projection
    var m = new OpenLayers.Marker(OSMloc);
    window.markers.addMarker(m);

    //TODO: add marker label

    // add redirect to location
    // http://forum.openstreetmap.org/viewtopic.php?id=5537
    window.map.events.register('click', m, function(link){
      return function() {
        document.location.href = link;
      };
    }(link));
  });
});
