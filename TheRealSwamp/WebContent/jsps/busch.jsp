<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/rating.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/imagepreview.js"></script>
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

#toc_container {
    background: #f9f9f9 none repeat scroll 0 0;
    border: 1px solid #aaa;
    display: table;
    font-size: 95%;
    margin-bottom: 1em;
    padding: 20px;
    width: auto;
}

.toc_title {
    font-weight: 700;
    text-align: center;
}

#toc_container li, #toc_container ul, #toc_container ul li{
    list-style: outside none none !important;
}
.sidenav {
    height: 100%;
    width: 160px;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
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
    padding: 0px 10px;
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

<!--<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services</a>
  <a href="#clients">Clients</a>
  <a href="#contact">Contact</a>
</div>
<div id="toc_container">
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
-->
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('http://placehold.it/1900x1080')">
            <div class="carousel-caption d-none d-md-block">
              <h3>First Slide</h3>
              <p>This is a description for the first slide.</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
            <div class="carousel-caption d-none d-md-block">
              <h3>Second Slide</h3>
              <p>This is a description for the second slide.</p>
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('http://placehold.it/1900x1080')">
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
      </div>

      <div class="row">
        <div class="col-sm-8">
          <h2 class="mt-4">What We Do</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A deserunt neque tempore recusandae animi soluta quasi? Asperiores rem dolore eaque vel, porro, soluta unde debitis aliquam laboriosam. Repellat explicabo, maiores!</p>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis optio neque consectetur consequatur magni in nisi, natus beatae quidem quam odit commodi ducimus totam eum, alias, adipisci nesciunt voluptate. Voluptatum.</p>
          <p>
            <a class="btn btn-primary btn-lg" href="#">Call to Action &raquo;</a>
          </p>
        </div>
        <div class="col-sm-4">
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
      <!-- /.row -->
<h1>Busch Campus</h1>

<p>*Busch Picture Slideshow here, that will grow big once you hover over it, dated</p>
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
  <p>Busch campus started in 1935 after a 256-acre tract was purchased by the then president <a href="https://www.rutgers.edu/about/history/past-presidents/robert-c-clothier">Robert C. Clothier</a>. 
At the time it was named the River Road Campus. A <a href="${pageContext.request.contextPath}/jsps/images/busc.jpg" class="preview"> stadium </a> was completed in 1938, on land that was orignally a country club (golf course),
and is where many athletic events were held until it was replaced with High Point Solution Stadium now.  Before Busch became recongized as the engineering campus, the engineering department was in Murray Hall.
This is where the main math and engineering courses were taught. After the Soviet Union released Spotnik, the federal government increased its spending on academic science research.
With this extra money, in 1962, Rutgers was able to relocate the College of Engineering to Busch Campus. At some point it was named University Heights Campus (idk why lol). Then in 1971, the campus was renamed Busch,
after a millionare from edgewater named Charles L. Busch unexpecticly donated $10 million to the University for biological research after he died</p>
</div>

<div id="Fun Facts" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Fun Facts</h3>
  <ul>
	<li>Every Thursday, you can check out the stars at the physics building</li>
	<li>A Rutgers Bus crashed into McCormick Suites in <a href="http://www.dailytargum.com/article/2001/09/bus-loses-control-crashes">2001</a>, no one was seriously injured</li>
	<li>The Busch Campus Cove used to be an arcade</li>
	<li>Back when the drinking age used to be 18 (the good ole days), gerlanda's used to be a bar</li>
	<li>Actually apperntly all of the student centers used to have pubs</li>
	<li>The Rutgers Tennis Courts used to have a giant bubble surrounding it, but it got damaged by hurricanes
	and was never repaired.</li>
</ul> 
</div>

<div id="Map" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Map</h3>
  <p>Tokyo is the capital of Japan.</p>
</div>
<div id="Major Rankings" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
<table>
    <tr>
    <th>Major</th>
    <th>Rating</th>
    <th>Your Score</th>
    <th>Average</th>
    <th>Total Votes</th>
  </tr>
  <tr>
  <td><a href="#">Applied Sciences in Engineering</a></td>
  <td><fieldset class="rating" id="1">     
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
    </fieldset></td>
  <td id="lets">0</td>
  <td id="see">0</td>
  <td id="money">0</td>
  </tr>
    <tr>
  <td><a href="#">Electrial and Computer Engineering</a></td>
  <td id="1"><fieldset class="rating" id="2">     
        <span class="1"><input type="radio" name="stars1" id="4_stars" value="5" >
        <label class="stars" for="4_stars1">4 stars</label>
        <input type="radio" name="stars" id="3_stars1" value="4" >
        <label class="stars" for="3_stars1">3 stars</label>
        <input type="radio" name="stars" id="2_stars1" value="3" >
        <label class="stars" for="2_stars1">2 stars</label>
        <input type="radio" name="stars" id="1_stars1" value="2" >
        <label class="stars" for="1_stars1">1 star</label>
        <input type="radio" name="stars" id="0_stars1" value="1" required>
        <label class="stars" for="0_stars1">0 star</label>
    </fieldset></td>
  <td  id="take">0</td>
  <td  id="two">0</td>
  <td  id="times">0</td>
  </tr>
  </table>
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
<script src="${pageContext.request.contextPath}/jsps/js/jquery-3.0.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/jsps/js/bootstrap.bundle.min.js"></script>
</body>
</html>