<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/home.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jsps/css/rating.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/rating.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    
<title>Prigmore's Swamp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
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

<h1>College Avenue History</h1>
<p> The Long History of Rutgers and New Brunswick goes way back into the 1800s.
It seems that a lot of these historical tidbits have been lost in the translation of time.
I'm here to see that shit come back to life </p>

  	<hr style="height:1px;border:none;color:#333;background-color:#333;">
          <div class="div1">
          <h2>Articles</h2>
          <a class="embedly-card" data-card-controls="0" href="http://i-am.rutgers.edu/2015/11/rutgers-before-the-leaves-drop/">Rutgers, Before the Leaves Drop.</a>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script>
</div>

<div class="div2">
<blockquote class="embedly-card"><h4><a href="http://i-am.rutgers.edu/2015/11/hidden-in-plain-sight-the-rutgers-geology-museum/">Hidden in Plain Sight: The Rutgers Geology Museum</a></h4><p>You've probably passed it the dozens of times you were anywhere near Queens College and Kirkpatrick Chapel. The Rutgers Geology Museum is one of the oldest collegiate geology museums in the country. I Am Rutgers attended 'Minerals Late Night', a monthly event that aims to teach guests about powerful minerals through demonstrations, arts and crafts, and other educational activities.</p></blockquote>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script>
</div>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Overview')" id="defaultOpen">Overview</button>
  <button class="tablinks" onclick="openCity(event, 'Fun Facts')">Fun Facts</button>
  <button class="tablinks" onclick="openCity(event, 'Map')">Map</button>
  <button class="tablinks" onclick="openCity(event, 'Major Rankings')">Major Rankings</button>
  <button class="tablinks" onclick="openCity(event, 'Dorm Rankings')">Dorm Rankings</button>
  <button class="tablinks" onclick="openCity(event, 'Pictures')">Pictures</button>
  <button class="tablinks" onclick="openCity(event, 'Greek Life')">Greek Life</button>
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
    	<li>New Brunswick was orignally called Prigmore's Swamp... hence the name....<sup><a href="https://twitter.com/CityofNewBruns/status/1001886195192918016"  target="_blank">[s]</a></sup></li>
	<li>Rutgers has a tomato named after itself<sup><a href="https://en.wikipedia.org/wiki/Rutgers_tomato#History"  target="_blank">[s]</a></sup></li>
	<li>The cure of TB was found at Rutgers 1943, by Albert Schatz, under the supervision of Nobel Prize winner, Selman Waksman <sup><a href="https://en.wikipedia.org/wiki/Streptomycin#History"  target="_blank">[s]</a></sup></li>
	<li>Selman Waksman discovered the ability to discover antibiotics <sup><a href="https://news.rutgers.edu/feature/selman-waksman-rutgers-alumnus-researcher-and-nobel-prize-winner-developed-system-discover/20160417#.W4Lu_uhKjIU"  target="_blank">[s]</a></sup></li>
	<li>You can print to any Rutgers printer from your laptop by downloading an RU Wireless print <a href="https://www.cs.rutgers.edu/resources/printing-on-windows"> driver</a> </li>
	<li>On print release stations, you can select multiple jobs for printing at the same time. 
	Select the first job and drag down at an angle; the rest of your jobs will also be selected. It's magical. <sup><a href="https://www.reddit.com/r/rutgers/comments/3k8ww0/little_rutgers_things_i_wish_i_knew_earlier/"  target="_blank">[s]</a></sup></li>
	<li>Rutgers offers personal training and massages for very  cheap-- much cheaper than you'll find once you leave. <sup><a href="https://www.reddit.com/r/rutgers/comments/3k8ww0/little_rutgers_things_i_wish_i_knew_earlier/"  target="_blank">[s]</a></sup></li>
	<li>There's a bus that goes to NYC (Port Authority Bus Terminal) and tickets are around $17 round trip. It's cheaper than the $26 round trip train fare. 
	You have to buy them from the SABO, in the bottom floor of the SAC.  <sup><a href="https://www.reddit.com/r/rutgers/comments/3k8ww0/little_rutgers_things_i_wish_i_knew_earlier/"  target="_blank">[s]</a></sup></li>
	<li>Theres an office at records hall that's unlocked</li>
	<li>Mine Street - used to be an Actual Copper <a href="https://assets.rbl.ms/14645584/980x.png">Mine</a> - Link to picture </li>
	<li>If you walk underneath the Graduation Arch more than twice, you will not graduate <sup><a href="http://i-am.rutgers.edu/2013/09/old-queens-gate/"  target="_blank">[s]</a></sup></li>
	<li>William the Silent in Vorhees Mall only wistles when a virgin walks past it. Legend has it... that he has never wistled <sup><a href="http://i-am.rutgers.edu/2013/10/scarlet-lore-willy-the-silent/"  target="_blank">[s]</a></sup> <li>
	<li>There is a graffiti Path Between Busch and College Ave behind the park where the River Dorms are</li>
	<li>Theres a Helipad on Vorhees Mall??</li>
	<li>Scudder Hall, where Rutgers Hillel stands now</li>
	<li>Alexander Hamilton Trained his artillery in New Brunswick while waiting for George Washington at the battle of Trenton. </li>
	</ul> 
</div>

<div id="Map" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Map</h3>
  <div id="mapid"></div>
<script src="http://cdn.leafletjs.com/leaflet/v0.7.7/leaflet.js"></script>
<script src="${pageContext.request.contextPath}/jsps/js/collegeave.js"></script>
</div>
<div id="Major Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3> Building List</h3>
  <p>
  
  </p>
  
  <p>Please rate this item:</p>
    <fieldset class="rating">     
        <span><input type="radio" name="stars" id="4_stars" value="5" >
        <label class="stars" for="4_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="4" >
        <label class="stars" for="3_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="3" >
        <label class="stars" for="2_stars">2 stars</label>
        <input type="radio" name="stars" id="1_stars" value="2" >
        <label class="stars" for="1_stars">1 star</label>
        <input type="radio" name="stars" id="0_stars" value="1" required>
        <label class="stars" for="0_stars">0 star</label>
        <span  class="label"> Rating: </span>
    </fieldset>
    
      	 <table>
  <tr>
<td id="lets"><a href="https://ruadphi.wixsite.com/alpha-delta-phi-ru" target="_blank" rel="noopener">Alpha Delta Phi</a></td>
<td id="see"><a href="http://rutgersaepi.org/" target="_blank" rel="noopener">Alpha Epsilon Pi</a></td>
<td id="money"><a href="http://akl.org/">Alpha Kappa Lambda</a></td>
</tr>
</table>
</div>
<div id="Dorm Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Dorm Rankings</h3>
  <blockquote class="embedly-card"><h4><a href="http://i-am.rutgers.edu/2015/11/hidden-in-plain-sight-the-rutgers-geology-museum/">Hidden in Plain Sight: The Rutgers Geology Museum</a></h4><p>You've probably passed it the dozens of times you were anywhere near Queens College and Kirkpatrick Chapel. The Rutgers Geology Museum is one of the oldest collegiate geology museums in the country. I Am Rutgers attended 'Minerals Late Night', a monthly event that aims to teach guests about powerful minerals through demonstrations, arts and crafts, and other educational activities.</p></blockquote>
<script async src="//cdn.embedly.com/widgets/platform.js" charset="UTF-8"></script>
</div>
<div id="Pictures" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Pictures</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
<div id="Greek Life" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Greek Life</h3>
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