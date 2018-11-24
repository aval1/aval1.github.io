<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prigmore's Swamp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/home.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/close.js"></script>
</head>
<style>
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close:hover,
.close:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}
#container {
    border:none;
    display: table;
    width: 100%;
}
#content, #sidebar {
    display: table-cell;
    width:75%;
}
#content {
}

#sidebar {

}
#sidebar > ul {
	padding-top:20px;
	padding-bottom:20px;
    background: #FF2400;
    border: 1px solid;
    border-color: black;
    border-radius: 5px;
}
a.specialeffects:hover {
  color: black ;
  background-color: #cfc ;
}
.tab button {
	font-family:serif;
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}
</style>
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
<h1>Livingston</h1>
<p> The Long History of Rutgers and New Brunswick goes way back into the 1800s.
It seems that a lot of these historical tidbits have been lost in the translation of time.
I'm here to see that shit come back to life </p>

<div class="content">Before Busch became recongized as the engineering campus, the engineering department was in Murray Hall.
This is where the main math and engineering courses were taught. After the Soviet Union released Spotnik, the federal government increased its spending on academic science research.
With this extra money, in 1962, Rutgers was able to relocate the College of Engineering to Busch Campus. At some point it was named University Heights Campus (idk why lol). Then in 1971, the campus was renamed Busch,
after a millionare from edgewater named Charles L. Busch unexpecticly donated $10 million to the University for biological research after he died</div>
<a href="#" class="show_hide" data-content="toggle-text">Read More</a>
</div>
</div>
<hr style="height:1px;border:none;color:#333;background-color:#333;">
<div id="container">
    
    <div id="content">
    <h2>Articles</h2>
           <table>
          <tr><td><blockquote class="embedly-card"><h4><a href="http://i-am.rutgers.edu/2015/10/hidden-plain-sight-rutgers-ecological-preserve/">Hidden in Plain Sight: Rutgers Ecological Preserve</a></h4><p>The Rutgers Ecological Preserve is one of the largest forests in New Jersey. The expansive preserve, spanning 316 acres, features numerous fresh water streams that feed into the Raritan River and houses numerous hiking and biking trails for the public to enjoy.</p></blockquote>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script></td>
</tr>
          </table>
         </div>
    
    <div id="sidebar">
    <ul>
    <li><a class="specialeffects"  href="${pageContext.request.contextPath}/CollegeAve">College Ave</a>
    <li><a class="specialeffects"  href="${pageContext.request.contextPath}/Busch">Busch</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/Livingston">Livingston</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/Cook">Cook/Douglass</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/GreekLife">Greek Life</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/ClassGifts">Class Gifts</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/Timeline">Timeline</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/Parking">Parking Hacks</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/Clubs">Club Infomation</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/FreshmanLinks">Freshman Links</a>
	<li><a class="specialeffects"  href="${pageContext.request.contextPath}/Voting">Voting</a> </li>
	</ul>
    </div>
    
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
</div>

<div id="Fun Facts" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Fun Facts</h3>
  <ul>
	<li>Tillett used to be the dining hall before it was a classroom building</li>
	<li>It used to be called "Toliet" (See people can be mean but creative)</li>
	<li>Lucy Stone Hall was designed by artitects so that it could not be occupied at once by protesting students, which is why it is so seperate<li>
	<li>If you stand in the center of the Livi circle by the Student Center and clap, you can hear a squeak.</li>
	<li>Theres are some time capsules on busch</li>
	<li>Something about Camp Kilmer</li>
	</ul> 
</div>

<div id="Map" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
    <p> <h3>Scupture Map</h3>

<img id="myImg" src="${pageContext.request.contextPath}/jsps/images/redswamp.png" alt="Snow" style="display: none;width:100%;max-width:300px">

<!-- The Modal -->
<div id="myModal" class="modal"style="display: none;">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01" src="${pageContext.request.contextPath}/jsps/images/redswamp.png">
  <div id="caption"></div>
</div>

<div class="popup" onclick="myFunction()" style="display: none;">Click me to toggle the popup!
  <span class="popuptext" id="myPopup">Add caption information here, change the style of the popup <img src="${pageContext.request.contextPath}/jsps/images/1.jpg" id="myPopup"></span>
</div>


<img src="${pageContext.request.contextPath}/jsps/images/LivingstonMap.jpg" alt="Planets" usemap="#planetmap">

<map name="planetmap">
  <area id="1" shape="circle" coords="1145,525,14" onclick="myFunction(this.id)" href="#">
  <area id="2" shape="circle" coords="857,495,14" onclick="myFunction(this.id)" href="#">
  <area id="3" shape="circle" coords="739,479,14" onclick="myFunction(this.id)" href="#">
  <area id="4" shape="circle" coords="879,339,14" onclick="myFunction(this.id)" href="#">
  <area id="5" shape="circle" coords="661,325,14" onclick="myFunction(this.id)" href="#">
  <area id="6" shape="circle" coords="462,451,14" onclick="myFunction(this.id)" href="#">
  <area id="7" shape="circle" coords="473,405,14" onclick="myFunction(this.id)" href="#">
  <area id="8" shape="circle" coords="330,350,14" onclick="myFunction(this.id)" href="#">
  <area id="9" shape="circle" coords="275,395,14" onclick="myFunction(this.id)" href="#">
  <area id="10" shape="circle" coords="235,369,14" onclick="myFunction(this.id)" href="#">
  <area id="11" shape="circle" coords="249,345,14" onclick="myFunction(this.id)" href="#">
  <area id="12" shape="circle" coords="237,315,14" onclick="myFunction(this.id)" href="#">
  <area id="13" shape="circle" coords="174,277,14" onclick="myFunction(this.id)" href="#">
  <area id="14" shape="circle" coords="144,406,14" onclick="myFunction(this.id)" href="#">
  <area id="15" shape="circle" coords="828,1132,14" onclick="myFunction(this.id)" href="#">
  <area id="16" shape="circle" coords="548,1241,14" onclick="myFunction(this.id)" href="#">
</map></p>
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
modalImg.src = "${pageContext.request.contextPath}/jsps/images/Livingston/"+ x +".jpg";
captionText.innerHTML = this.alt;
}

//Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

//When the user clicks on <span> (x), close the modal
span.onclick = function() { 
modal.style.display = "none";
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