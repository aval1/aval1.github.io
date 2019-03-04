<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/jquery-1.9.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/home.css">

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
   integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
   crossorigin=""/>
   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
   
   <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
   integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
   crossorigin=""></script>
   <link rel="shortcut icon" href="${pageContext.request.contextPath}/jsps/images/favicon.ico"/>
<style>

#mapid { height: 300px; }

footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}


</style>

<title>Prigmore's Swamp</title>
</head>

<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.0';
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="topnav">
	<div class="logo">
		<a href="${pageContext.request.contextPath}/Home" style="padding-top:0px;">
			<img src="${pageContext.request.contextPath}/jsps/images/redswamp.png" style="width:71px;height:50px;">
		</a>
	</div>
	<a href="#">Alerts</a>
    <div class="dropdown">
<button onclick="myFunction()" class="dropbtn">Dropdown</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="collegeAve.html">College Ave</a>
    <a href="${pageContext.request.contextPath}/Busch">Busch</a>
	<a href="${pageContext.request.contextPath}/Livingston">Livingston</a>
	<a href="${pageContext.request.contextPath}/Cook">Cook</a>
	<a href="${pageContext.request.contextPath}/Douglass">Douglass</a>
	<a href="${pageContext.request.contextPath}/GreekLife">Greek Life</a>
	<a href="${pageContext.request.contextPath}/ClassGifts">Class Gifts</a>
	<a href="${pageContext.request.contextPath}/Timeline">Timeline</a>
	<a href="${pageContext.request.contextPath}/Parking">Parking Hacks</a>
	<a href="${pageContext.request.contextPath}/Clubs">Club Infomation</a>
	<a href="${pageContext.request.contextPath}/FreshmanLinks">Helpful Links</a>
	<a href="${pageContext.request.contextPath}/Voting">Voting</a></div>
	
</div>
	<a href="${pageContext.request.contextPath}/Contact">Contact Us</a>
</div>

<h1> Welcome to Prigmore's Swamp</h1>
<table><tr><td><p>I've been working on this crap for a couple weeks now. I really just made this for fun so I can learn some stuff about Rutgers
I'm hoping to add a way to just get people to upload thier own stuff. The Long History of Rutgers and New Brunswick goes way back into the 1800s.
It seems that a lot of these historical tidbits have been lost in the translation of time.
I'm here to see that shit come back to life </p></td>
<td><div id="factbox">
		<h2>Fun Fact</h2>
			<div id="quoteContainer">
				<p></p>	
			</div><!--end quoteContainer-->
			<div id="buttonContainer">
				<a href="#" id="quoteButton">Generate</a>
		</div><!--end buttonContainer-->
	</div><!--end container-->
	</td>
</tr>
</table>
<h3>Choose your Campus:</h3>
<!--
<form action="${pageContext.request.contextPath}/" method="post">
	<input type="text" name="username" placeholder="Username" class="border" size=50> 
	<br><br>
	<input type="password" name="password" placeholder="Password" class="border" size=51> 
	<br><br>
	<button type="submit" name="button" value="button1" class="button">Submit</button>
</form>
<c:if test="${not empty success}" >
	<br>
	<c:if test="${not success}" >
		Login Failed
	</c:if>
	
</c:if>
<div>
<ul>
	<li><a href="collegeAve.jsp">College Ave</a></li>
	<li><a href="${pageContext.request.contextPath}/Busch">Busch</a></li>
	<li><a href="${pageContext.request.contextPath}/Livingston">Livingston</a></li>
	<li><a href="${pageContext.request.contextPath}/Cook">Cook/Douglass</a></li>
	<li><a href="${pageContext.request.contextPath}/GreekLife">Greek Life</a></li>
	<li><a href="${pageContext.request.contextPath}/ClassGifts">Class Gifts</a></li>
	<li><a href="${pageContext.request.contextPath}/Timeline">Timeline</a></li>
	<li><a href="${pageContext.request.contextPath}/Parking">Parking Hacks</a></li>
	<li><a href="${pageContext.request.contextPath}/Clubs">Club Infomation</a></li>
	<li><a href="${pageContext.request.contextPath}/FreshmanLinks">Freshman Links</a></li>
	<li><a href="${pageContext.request.contextPath}/Voting">Voting</a></li>
</ul>
-->
</div>
<a href="${pageContext.request.contextPath}/CollegeAve" style="background-image:url(https://news.rutgers.edu/sites/medrel/files/inline-img/College%20Avenue%20Student%20Apartments350.jpg)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      College Ave Campus
    </div>
    <div class="bG">
    </div>
  </div>
</a>

<a href="${pageContext.request.contextPath}/Busch" style="background-image:url(https://newbrunswick.rutgers.edu/sites/default/files/styles/ru_slideshow_medium/public/NR13HomecomingVHustn0799_ss.jpg?itok=ZXSEvdqS)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
    Busch Campus    </div>
    <div class="bG">
    </div>
  </div>
</a>

<a href="${pageContext.request.contextPath}/Livingston" style="background-image:url(https://newbrunswick.rutgers.edu/sites/default/files/styles/ru_slideshow_medium/public/photos/100310_hamerman_601_pg.jpg?itok=4UEIgSi_)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      Livingston Campus
    </div>
    <div class="bG">
    </div>
  </div>
</a>
<a href="${pageContext.request.contextPath}/Cook" style="background-image:url(http://rutgers.myuvn.com/wp-content/uploads/sites/40/2016/10/RavineBridge.jpg)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      Cook Campus
    </div>
    <div class="bG">
    </div>
  </div>
</a>
<a href="${pageContext.request.contextPath}/Douglass" style="background-image:url(https://newbrunswick.rutgers.edu/sites/default/files/styles/ru_slideshow_medium/public/NR09CookDouglassSpring2667_ss.jpg?itok=SQGWpSK7)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      Douglass Campus
    </div>
    <div class="bG">
    </div>
  </div>
</a>
<a href="${pageContext.request.contextPath}/Parking" style="background-image:url(https://tmo.com/uploads/files/117195062237638490-slide2.full.png)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      Rutgers Camden
    </div>
    <div class="bG">
    </div>
  </div>
</a>
<a href="${pageContext.request.contextPath}/ClassGifts" style="background-image:url(https://www.newark.rutgers.edu/sites/default/files/styles/620x340/public/null/untitled-1.jpg?itok=dQwB0fsk)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      Rutgers Newark
    </div>
    <div class="bG">
    </div>
  </div>
</a>
<a href="${pageContext.request.contextPath}/Voting" style="background-image:url(https://www.rutgers.edu/sites/default/files/NR13NwkHealthCampus2381.jpg)" class="blurredBG">
  <div class="parentBG">
    <div class="content">
      RBHS
    </div>
    <div class="bG">
    </div>
  </div>
</a>

<!--<div class="div1">

<blockquote class="embedly-card"><h4><a href="http://timeline.rutgers.edu/#event-royal-governor-signs-queens-college-charter">Our History | Rutgers 250</a></h4><p>Copyright 2016, Rutgers, The State University of New Jersey, an equal opportunity, affirmative action institution. All rights reserved. Contact RU-info at 732-445-info (4636) | Questions? Ask Colonel Henry or text us at 732-662-2664. | University Webmaster | Site Map</p></blockquote>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script>
<div class="div2"> <div class="fb-page" data-href="https://www.facebook.com/pg/RutgersU/events/?ref=page_internal" data-tabs="events" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="false">
<blockquote cite="https://www.facebook.com/pg/RutgersU/events/?ref=page_internal" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/pg/RutgersU/events/?ref=page_internal">
Rutgers University</a></blockquote></div>
</div>

<div id="mapid"></div>-->


<!-- <div id="mapid"></div>-->
<script src="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"></script>
</div>

<footer>Copyright &copy; Big Pumba Studios</footer>
</body>
<script src="${pageContext.request.contextPath}/jsps/js/slideshow.js"></script>
<script src="${pageContext.request.contextPath}/jsps/js/mymap.js"></script>

<script>
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
</script>
</html>
