<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prigmore's Swamp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/home.css">
</head>
<body>

<div class="topnav">
	<div class="logo">
		<a href="${pageContext.request.contextPath}/Home" style="padding-top:0px;">
			<img src="${pageContext.request.contextPath}/jsps/images/redswamp.png" style="width:71px;height:50px;">
		</a>
	</div>
	<a href="#">Alerts</a>
	<a href="#">Help</a>
	<a href="${pageContext.request.contextPath}/Contact">Contact Us</a>
</div>

<div>
<h1>https://www.reddit.com/r/rutgers/wiki/index Helpful Infomation about Rutgers Classes</h1>
<p>Helpful Links: </p>
<ul>
<li>Course Sniper - If you're trying to get into a class that is full during add/drop period: </li>
<li>You cannot go wrong with the Rutgers App, but i mean if you need a color coded map, RU There yet does a good job </li>
<li>Garunteed easiest classes at rutgers with professors</li>
<li>Degree Navigator for picking you classes</li>

</ul>

<h3>AVOID:</h3>
<ul>
<li>Bus traffic on the first week of class</li>
<li>Don't even bother during rush hour for about the first month</li>
<li>Paying more than 10 for any party. But if you do...just don't tell anyone</li>
<li>The Mongolain grill or pasta line on Busch</li>
</ul>
</div>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Overview')" id="defaultOpen">Overview</button>
  <button class="tablinks" onclick="openCity(event, 'Fun Facts')">Fun Facts</button>
  <button class="tablinks" onclick="openCity(event, 'Map')">Map</button>
  <button class="tablinks" onclick="openCity(event, 'Major Rankings')">Major Rankings</button>
  <button class="tablinks" onclick="openCity(event, 'Dorm Rankings')">Dorm Rankings</button>
  <button class="tablinks" onclick="openCity(event, 'Pictures')">Pictures</button>
</div>

<div id="Overview" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Overview</h3>
  <p>London is the capital city of England.</p>
</div>

<div id="Fun Facts" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Fun Facts</h3>
  <ul>
	<li>Tillett used to be the dining hall before it was a classroom building</li>
	<li>It used to be called "Toliet" (See people can be mean but creative)</li>
	<li>Lucy Stone Hall was designed by artitects so that it could not be occupied at once by protesting students, which is why it is so seperate<li>
	<li>If you stand in the center of the Livi circle by the Student Center and clap, you can hear a squeak.</li>
	</ul> 
</div>

<div id="Map" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Map</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
<div id="Major Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Major Rankings</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
<div id="Dorm Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Dorm Rankings</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
<div id="Pictures" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Pictures</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
  <footer>Copyright &copy; Big Pumba Studios</footer>   
</body>
</html> 