<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/jsps/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/jsps/css/business-frontpage.css" rel="stylesheet">
    
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Prigmore's Swamp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/home.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/rating.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/jquery-1.9.1.min.js"></script>
<script src="${pageContext.request.contextPath}/jsps/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/rating.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/dropdown.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/imagepreview.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/bootstrap.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/close.js"></script>
</head>
<style>
#preview{
	position:absolute;
	border:1px solid #ccc;
	background:#333;
	padding:5px;
	display:none;
	color:#fff;
	}

.sidenav {
    height: 300px;
    width: 400px;
    position: relative;
    z-index: 1;
    top: 0;
    right: 0;
    overflow-x: hidden;
    padding-top: 20px;
}

.sidenav a {
    padding: 6px 8px 6px 16px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.main {
    margin-left: 160px; /* Same as the width of the sidenav */
    font-size: 28px; /* Increased text to enable scrolling */
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
    .sidenav a {font-size: 18px;}
    
    input[type="radio"] {
    padding-right: 4px;
    position: absolute;
    left: 340px;
    margin-top: 10px;
    visibility: hidden;
}
}

div#right-sidebar{
  position:absolute;
  top:0;
  right:0;
  width:<length>;
  height:100%;
 }

a.morelink {
	text-decoration:none;
	outline: none;
}
.morecontent span {
	display: none;

}

/* Popup container - can be anything you want */
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
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
</style>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<body>

<div class="topnav">
	<div class="logo">
		<a href="${pageContext.request.contextPath}/Home" style="padding-top:0px;">
			<img src="${pageContext.request.contextPath}/jsps/images/redswamp.png" style="width:71px;height:50px;">
		</a>
	</div>
	<a href="#">Alerts</a>
	<div class="search-container">
    <!-- <form action="/action_page.php">
      <input type="text" placeholder="Search.." name="search">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form> -->
  </div>
    <div class="dropdown">
<button onclick="myFunction()" class="dropbtn">Dropdown</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="${pageContext.request.contextPath}/CollegeAve">College Ave</a>
    <a href="${pageContext.request.contextPath}/Busch">Busch</a>
	<a href="${pageContext.request.contextPath}/Livingston">Livingston</a>
	<a href="${pageContext.request.contextPath}/Cook">Cook</a>
	<a href="${pageContext.request.contextPath}/Douglass">Douglass</a>
	<a href="${pageContext.request.contextPath}/GreekLife">Greek Life</a>
	<a href="${pageContext.request.contextPath}/ClassGifts">Class Gifts</a>
	<a href="${pageContext.request.contextPath}/Timeline">Timeline</a>
	<a href="${pageContext.request.contextPath}/Parking">Parking Hacks</a>
	<a href="${pageContext.request.contextPath}/Clubs">Club Infomation</a>
	<a href="${pageContext.request.contextPath}/FreshmanLinks">Freshman Links</a>
	<a href="${pageContext.request.contextPath}/Voting">Voting</a></div>
</div>
	<a href="${pageContext.request.contextPath}/Contact">Contact Us</a>
</div>


<!--
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
        -->
          <!-- Slide One - Set the background image for this slide in the line below
          <div class="carousel-item active" style="background-image: url('http://placehold.it/1100x1080')">
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below
          <div class="carousel-item" style="background-image: url('http://placehold.it/1100x1080')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below
          <div class="carousel-item" style="background-image: url('http://placehold.it/1100x1080')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Third Slide</h3>
              <p>This is a description for the third slide.</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div> -->

      <div class="row">

        <div class="col-sm-8">
          <h2 class="mt-4">Busch Campus</h2>
          <hr>
          <div>
          <p>Busch campus started in 1935 after a 256-acre tract was purchased by the then president <a href="https://www.rutgers.edu/about/history/past-presidents/robert-c-clothier">Robert C. Clothier</a>. 
At the time it was named the River Road Campus. A <a href="${pageContext.request.contextPath}/jsps/images/busc.jpg" class="preview"> stadium </a> was completed in 1938, on land that was orignally a country club (golf course),
and is where many athletic events were held until it was replaced with High Point Solution Stadium now. <sup><a href="https://en.wikipedia.org/wiki/Busch_Campus_of_Rutgers_University#cite_note-2"  target="_blank">[1]</a></sup></p> 

<div class="content">Before Busch became recongized as the engineering campus, the engineering department was in Murray Hall.
This is where the main math and engineering courses were taught. After the Soviet Union released Spotnik, the federal government increased its spending on academic science research.
With this extra money, in 1962, Rutgers was able to relocate the College of Engineering to Busch Campus. At some point it was named University Heights Campus (idk why lol). Then in 1971, the campus was renamed Busch,
after a millionare from edgewater named Charles L. Busch unexpecticly donated $10 million to the University for biological research after he died</div>
<a href="#" class="show_hide" data-content="toggle-text">Read More</a>
</div>

	<hr style="height:1px;border:none;color:#333;background-color:#333;">
          
          <h2 class="mt-4">Articles</h2>
          <hr>
          <a class="embedly-card" data-card-controls="0" href="http://i-am.rutgers.edu/2015/11/rutgers-before-the-leaves-drop/">Rutgers, Before the Leaves Drop.</a>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script>
        </div>
        <div class="col-sm-4">
        <div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services</a>
  <a href="#clients">Clients</a>
  <a href="#contact">Contact</a>
  <!-- <div class="fb-page" data-href="https://www.facebook.com/search/events/?q=busch%20campus" data-tabs="events" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
<blockquote cite="https://www.facebook.com/search/events/?q=busch%20campus" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/pg/RutgersU/events/?ref=page_internal">
Rutgers University</a></blockquote></div>  -->
  
  <!-- <a class="embedly-card" data-card-controls="0" href="http://i-am.rutgers.edu/2015/11/rutgers-before-the-leaves-drop/">Rutgers, Before the Leaves Drop.</a>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script> -->
</div>
<!--<div id="toc_container">
<p class="toc_title">Contents</p>
<ul class="toc_list">
  <li><a href="#First_Point_Header">1 First Point Header</a>
  <ul>
    <li><a href="#First_Sub_Point_1">1.1 First Sub Point 1</a></li>
    <li><a href="#First_Sub_Point_2">1.2 First Sub Point 2</a></li>
  </ul>
</li>
<li><a href="#Second_Point_Header">2 Second Point Header</a></li>
<li><a href="#Third_Point_Header">3 Third Point Header</a></li>
</ul>
</div>
        <h2 class="mt-4">Contact Us</h2>
          <address>
            <strong>Start Bootstrap</strong>
            <br>3481 Melrose Place
            <br>Beverly Hills, CA 90210
            <br>
          </address>
          <address>
            <abbr title="Phone">P:</abbr>
            (123) 456-7890
            <br>
            <abbr title="Email">E:</abbr>
            <a href="mailto:#">name@example.com</a>
          </address>
        </div>
      </div>
      -->
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
  <p>FInd the fucking gnomes on Buschh</p>
  </div>

<div id="Fun Facts" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Fun Facts</h3>
  <ul>
	<li>Every Thursday, if the skys are clear, you can check out the stars using the telescope at the physics building</li>
	<li>A Rutgers Bus crashed into McCormick Suites in <a href="http://www.dailytargum.com/article/2001/09/bus-loses-control-crashes">2001</a>, no one was seriously injured</li>
	<li>The Busch Campus Cove used to be an arcade</li>
	<li>Back when the drinking age used to be 18 (the good ole days), gerlanda's used to be a bar</li>
	<li>Actually apperntly all of the student centers used to have pubs</li>
	<li>The Rutgers Tennis Courts used to have a giant bubble surrounding it, but it got damaged by hurricanes
	and was never repaired.</li>
	<li>The Busch Student Center used to have an Art Gallery</li>
	<li> The old RechargeU on Busch is reportedly turning into an ESports Lounge</li>
</ul> 
</div>

<div id="Map" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Scupture Map</h3>

<img id="myImg" src="${pageContext.request.contextPath}/jsps/images/redswamp.png" alt="Snow" style="width:100%;max-width:300px">

<!-- The Modal -->
<div id="myModal" class="modal">
  <span class="close">&times;</span>
  <img class="modal-content" id="img01" src="${pageContext.request.contextPath}/jsps/images/redswamp.png">
  <div id="caption"></div>
</div>

<p>Click on the sun or on one of the planets to watch it closer:</p>

<div class="popup" onclick="myFunction()">Click me to toggle the popup!
  <span class="popuptext" id="myPopup">Add caption information here, change the style of the popup <img src="${pageContext.request.contextPath}/jsps/images/1.jpg" id="myPopup"></span>
</div>


<img src="${pageContext.request.contextPath}/jsps/images/BuschMap.jpg" alt="Planets" usemap="#planetmap">

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
</map>
</div>

<div id="Major Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
   <form >

</div>
<div id="Dorm Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Dorm Rankings	</h3>
  <table>
    <tr>
    <th>Major</th>
    <th>Ranking</th>
    <th>Top Employers</th>
    <th>Famous Alumni</th>
    <th>Comments</th>
  </tr>
  <tr>
  <td><a href="#">Busch Dining Hall</a></td>
  <td>
   <form action="${pageContext.request.contextPath}/Busch" method="post">
  <fieldset class="rating" id="1">     
        <span class="rater"><input type="radio" name="stars" id="4_stars" value="5" >
        <label class="stars" for="4_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="4" >
        <label class="stars" for="3_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="3" >
        <label class="stars" for="2_stars">2 stars</label>
        <input type="radio" name="stars" id="1_stars" value="2" >
        <label class="stars" for="1_stars">1 star</label>
        <input type="radio" name="stars" id="0_stars" value="1" required>
        <label class="stars" for="0_stars">0 star</label>
    </fieldset>
    </form></td>
  <td id="lets">0</td>
  <td id="see">0</td>
  <td id="money">0</td>
  <td><input type="submit" name="submit" value="submit" ></td>
  
  </tr>
    <tr>
  <td><a href="#">Livingston Dining Commons</a></td>
  <td id="1"><fieldset class="rating" id="2">     
        <span class="1"><input type="radio" name="stars1" id="4_stars1" value="5" >
        <label class="stars" for="4_stars1">4 stars</label>
        <input type="radio" name="stars1" id="3_stars1" value="4" >
        <label class="stars" for="3_stars1">3 stars</label>
        <input type="radio" name="stars1" id="2_stars1" value="3" >
        <label class="stars" for="2_stars1">2 stars</label>
        <input type="radio" name="stars1" id="1_stars1" value="2" >
        <label class="stars" for="1_stars1">1 star</label>
        <input type="radio" name="stars1" id="0_stars1" value="1" required>
        <label class="stars" for="0_stars1">0 star</label>
    </fieldset></td>
  <td  id="take">0</td>
  <td  id="two">0</td>
  <td  id="times">0</td>
  </tr>
  <tr>
    <td><a href="#">Brower Commons</a></td>
  <td id="1"><fieldset class="rating" id="3">     
        <span class="3"><input type="radio" name="stars2" id="4_stars2" value="5" >
        <label class="stars" for="4_stars2">4 stars</label>
        <input type="radio" name="stars2" id="3_stars2" value="4" >
        <label class="stars" for="3_stars2">3 stars</label>
        <input type="radio" name="stars2" id="2_stars2" value="3" >
        <label class="stars" for="2_stars2">2 stars</label>
        <input type="radio" name="stars2" id="1_stars2" value="2" >
        <label class="stars" for="1_stars2">1 star</label>
        <input type="radio" name="stars2" id="0_stars2" value="1" required>
        <label class="stars" for="0_stars2">0 star</label>
    </fieldset></td>
  <td id="we">0</td>
  <td id="are">0</td>
  <td id="farmers">0</td>
  </tr>
  <tr>
      <td><a href="#">Neilson Dining Hall</a></td>
  <td id="1"><fieldset class="rating" id="4">     
        <span class="4"><input type="radio" name="stars3" id="4_stars3" value="5" >
        <label class="stars" for="4_stars3">4 stars</label>
        <input type="radio" name="stars3" id="3_stars3" value="4" >
        <label class="stars" for="3_stars3">3 stars</label>
        <input type="radio" name="stars3" id="2_stars3" value="3" >
        <label class="stars" for="2_stars3">2 stars</label>
       <input type="radio" name="stars3" id="1_stars3" value="2" >    
        <label class="stars" for="1_stars3">1 star</label>
        <input type="radio" name="stars3" id="0_stars3" value="1" required>
        <label class="stars" for="0_stars3">0 star</label>
    </fieldset></td>
  <td id="fin">0</td>
  <td id="ish">0</td>
  <td id="er">0</td>
  </tr>
  </table>

<table border="2">
"WebContent/jsps/livingston.jsp"<tr>
<td>user ID</td>
<td>Birthday</td>
<td>Gender</td>
<td>First Name</td>
<td>Last Name</td>
<td>Value</td>
<td>Value2</td>
</tr>
<tr><td>${ids}</td>
<td>${item}</td>
<td>${rating}</td>
<td>${votes}</td>
<td>${average}</td>
<td>${value}</td>
<td>${value2}</td>
</tr>
</table>
</form>
</div>
<div id="Pictures" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Pictures</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
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

//Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

//When the user clicks on <span> (x), close the modal
span.onclick = function() { 
 modal.style.display = "none";
}

//When the user clicks on div, open the popup
/*function myFunction() {
 var popup = document.getElementById("myPopup");
 popup.classList.toggle("show");
}*/

function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
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
    <script src="${pageContext.request.contextPath}/jsps/js/bootstrap.bundle.min.js"></script>
</body>
</html>