var collegeave = L.map('mapid').setView([51.505, -0.10], 13);

L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(collegeave);

var sigPi = L.marker([40.50003, -74.45141]).addTo(collegeave);
var gym = L.marker([40.486216,-74.451819]).addTo(collegeave);


var firefoxIcon = L.icon({
    iconUrl: 'http://joshuafrazier.info/images/firefox.svg',
    iconSize: [38, 95], // size of the icon
    });

// create marker object, pass custom icon as option, add to map         

function onMapClick(e) {
    //var markerpop=L.marker(e.latlng).addTo(collegeave);
    var markerfire = L.marker(e.latlng, {icon: firefoxIcon}).addTo(collegeave);
    markerfire.bindPopup(e.latlng+"Location").openPopup();  
    
}

function sigPiHover(e){
	sigPi.bindPopup("Welcome to the Zoo").openPopup();
	gym.bindPopup("Haven't changed a bit").openPopup();
}

collegeave.on('click', onMapClick);
collegeave.on('mouseover', sigPiHover);