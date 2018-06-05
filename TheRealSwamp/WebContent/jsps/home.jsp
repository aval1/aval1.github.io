<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/home.css">

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.1/dist/leaflet.css"
   integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
   crossorigin=""/>
   
   <script src="https://unpkg.com/leaflet@1.3.1/dist/leaflet.js"
   integrity="sha512-/Nsx9X4HebavoBvEBuyp3I7od5tA0UzAxs+j83KgC8PU0kgB4XiK4Lfe4y4cgBtaRJQEIFCW+oC506aPT2L1zw=="
   crossorigin=""></script>
   
<style>

#mapid { height: 180px; }

</style>

<title>Prigmore's Swamp</title>
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
</div>

<div>
<h1> Welcome to Prigmore's Swamp</h1>
<p> The Long History of Rutgers and New Brunswick goes way back into the 1800s.
It seems that a lot of these historical tidbits have been lost in the translation of time.
I'm here to see that shit come back to life </p>
</div>
<div>
<h3> Did You Know? </h3>
<ul>
	<li></li>
	<li></li>
	<li></li>
</ul>
</div>
<div>
<h3>Choose your Campus</h3>
<ul>
	<li><a href="${pageContext.request.contextPath}/CollegeAve">College Ave</a></li>
	<li><a href="${pageContext.request.contextPath}/Busch">Busch</a></li>
	<li><a href="livingston.jsp">Livingston</a></li>
	<li><a href="cook.jsp">Cook</a></li>
	<li><a href="douglass.jsp">Douglass</a></li>
	<li><a href="${pageContext.request.contextPath}/GreekLife">Greek Life</a></li>
</ul>

</div>
<div>
<h3> The Secrets of the Swamp</h3>
<ul>
	<li>Theres an office at records hall that's unlocked</li>
	<li>Theres a bowling alley underneath Loree</li>
	<li><a href="#">Read More</a></li>
</ul>

</div>

<div id="mapid"></div>

<div id="container">

<p id="pic"></p>

	<div id="sliderdiv">
	<img src="http://placehold.it/300x150?text=Image8" height="400px" width="900px"  id="imagethmb"/>
	
<div id="buttons">
<a href="#" onclick="startslide(1)" > > </a>
        	<img src="http://placehold.it/300x150?text=Image5" onclick="startslide(1)" height="70px" width="70px" class="next"\/>
        	<img src="http://placehold.it/300x150?text=Image4" onclick="startslide(-1)" height="70px" width="70px" class="previous"/>
</div>
		
	<div id="caption">
	<p id="cap">caption</p>
    </div>
       
	</div>
</div>
<div id="mapid"></div>
<script src="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"></script>


</body>
<script src="${pageContext.request.contextPath}/jsps/js/slideshow.js"></script>
<script src="${pageContext.request.contextPath}/jsps/js/mymap.js"></script>
</html>
