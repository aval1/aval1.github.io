var mymap = L.map('mapid').setView([51.505, -0.10], 13);

L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(mymap);

var marker = L.marker([51.5, -0.09]).addTo(mymap);

marker.bindPopup("<b>Hello world!</b><br>I am a popup.").openPopup();

var firefoxIcon = L.icon({
    iconUrl: 'http://joshuafrazier.info/images/firefox.svg',
    iconSize: [38, 95], // size of the icon
    });

// create marker object, pass custom icon as option, add to map         

function onMapClick(e) {
    //var markerpop=L.marker(e.latlng).addTo(mymap);
    var markerfire = L.marker(e.latlng, {icon: firefoxIcon}).addTo(mymap);
    
}

mymap.on('click', onMapClick);