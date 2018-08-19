<%@page import="java.sql.*"%>
<%! public static Connection connect(){
	try{
			      Class.forName("com.mysql.jdbc.Driver");
			      return DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/sakila","root","root");
			      }
	catch(Exception e){
		return null;
	}
}

	public static boolean close (Connection c){
		try{
			c.close();
			return true;
		}
		catch(Exception e){
			throw new Error(e);
		}
	}
%>
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
<h1>Cook</h1>
<p> The Long History of Rutgers and New Brunswick goes way back into the 1800s.
It seems that a lot of these historical tidbits have been lost in the translation of time.
I'm here to see that shit come back to life </p>
</div>

<% Connection c = connect();
out.print(c);
close(c);
%>

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
  	<li>Secret garden on Cook</li>
  </ul>
</div>

<div id="Map" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
 <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Map</h3>

<img id="myImg" src="${pageContext.request.contextPath}/jsps/images/redswamp.png" alt="Snow" style="width:100%;max-width:300px">

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01" src="${pageContext.request.contextPath}/jsps/images/redswamp.png">
  <div id="caption"></div>
</div>

<p>Click on the sun or on one of the planets to watch it closer:</p>

<div class="popup" onclick="myFunction()">Click me to toggle the popup!
  <span class="popuptext" id="myPopup">Add caption information here, change the style of the popup <img src="${pageContext.request.contextPath}/jsps/images/ItzaBlue.jpg" id="myPopup"></span>
</div>


<img src="${pageContext.request.contextPath}/jsps/images/BuschMap.jpg" alt="Planets" usemap="#planetmap">

<map name="planetmap">
  <area id="1" shape="circle" coords="1145,525,14" onclick="myFunction(this.id)" href="#">
  <area id="2" shape="circle" coords="857,495,14" onclick="myFunction(this.id)" href="#">
  <area id="3" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="4" shape="circle" coords="879,339,14" onclick="myFunction(this.id)" href="#">
  <area id="5" shape="circle" coords="661,324,14" onclick="myFunction(this.id)" href="#">
  <area id="6" shape="circle" coords="461,442,14" onclick="myFunction(this.id)" href="#">
  <area id="7" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="8" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="9" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="10" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="11" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="12" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="13" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
</map>
</div>
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
var modal = document.getElementById('myModal');

//Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption");

function myFunction(clicked_id) {
	var x = clicked_id;
	 var popup = document.getElementById("myPopup");
	 popup.classList.toggle("show");
	 modal.style.display = "block";
modalImg.src = "${pageContext.request.contextPath}/jsps/images/Busch/"+ x +".JPG";
captionText.innerHTML = this.alt;
}

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