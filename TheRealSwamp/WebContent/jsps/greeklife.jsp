<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/jquery-3.0.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jsps/js/invert.js"></script>
<title>Prigmore's Swamp </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
    background-color: #FF2400;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

/* Style the close button */
.topright {
    float: right;
    cursor: pointer;
    font-size: 28px;
}

.topright:hover {color: red;}

.topnav {
    background-color: #FF2400;
    overflow: hidden;
    border: 1px solid;
    border-color: black;
    border-radius: 5px;
}

.topnav a:hover {
    color: #ffffff;
    background-color: #ff8080;
}

.topnav a {
    float: right;
    color: #1A1F28;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    height:15px;
    font-size: 17px;
}
</style>
</head>
<body>

<div class="topnav">
	<a href="alerts">Alerts</a>
	<a href="help">Help</a>
</div>

<div>
<h1>Rutgers Greek Life</h1>
<p>Rutgers has a huge history of being a party school and its extensive greek life is to start of all that
the history of each organization is very deep, and im sure only each of the schools history would want to get into it

</p>
</div>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'Overview')" id="defaultOpen">Frategories</button>
  <button class="tablinks" onclick="openCity(event, 'Fun Facts')">Interfraternity Council</button>
  <button class="tablinks" onclick="openCity(event, 'Map')">Map</button>
  <button class="tablinks" onclick="openCity(event, 'Major Rankings')">Major Rankings</button>
  <button class="tablinks" onclick="openCity(event, 'Dorm Rankings')">Dorm Rankings</button>
  <button class="tablinks" onclick="openCity(event, 'Pictures')">Pictures</button>
</div>

<div id="Overview" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Overview</h3>
  <table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  <tr>
<td><a href="https://ruadphi.wixsite.com/alpha-delta-phi-ru" target="_blank" rel="noopener">Alpha Delta Phi</a></td>
<td><a href="http://rutgersaepi.org/" target="_blank" rel="noopener">Alpha Epsilon Pi</a></td>
<td><a href="http://akl.org/">Alpha Kappa Lambda</a></td>
<td><a href="http://apd.org/" target="_blank" rel="noopener">Alpha Phi Delta</a></td>
<td><a href="http://rutgers.alphasigmaphi.org/" target="_blank" rel="noopener">Alpha Sigma Phi</a></td>
<td><a href="http://www.betachitheta.com/" target="_blank" rel="noopener">Beta Chi Theta</a></td>
<td><a href="https://www.chiphi.org/">Chi Phi</a></td>
<td><a href="http://chipsirutgers.wordpress.com" target="_blank" rel="noopener">Chi Psi</a></td>
<td><a href="http://deltachi.org/">Delta Chi</a></td>
<td><a href="http://sites.dlp.org/sites/betasigma/" target="_blank" rel="noopener">Delta Lambda Phi</a></td>
<td><a href="http://deltaphirutgers.weebly.com/" target="_blank" rel="noopener">Delta Phi</a></td>
<td><a href="http://www.deltasigmaiota.org">Delta Sigma Iota</a></td>
<td><a href="https://www.deltasig.org/">Delta Sigma Phi</a></td>
<td><a href="http://www.rutgersdu.com" target="_blank" rel="noopener">Delta Upsilon</a></td>
<td><a href="http://www.kdr.com/" target="_blank" rel="noopener">Kappa Delta Rho</a></td>
<td><a href="http://www.phigam.org/" target="_blank" rel="noopener">Phi Gamma Delta</a></td>
<td><a href="http://www.phikappapsi.com/" target="_blank" rel="noopener">Phi Kappa Psi</a></td>
<td><a href="http://nbp.rutgers.phikappatau.org/" target="_blank" rel="noopener">Phi Kappa Tau</a></td>
<td><a href="http://www.phimudelta.org/" target="_blank" rel="noopener">Phi Mu Delta</a></td>
<td><a href="http://www.ruphisigs.com/" target="_blank" rel="noopener">Phi Sigma Kappa</a></td>
<td><a href="http://www.pikes.org/" target="_blank" rel="noopener">Pi Kappa Alpha</a></td>
<td><a href="http://www.pikapp.org/" target="_blank" rel="noopener">Pi Kappa Phi</a></td>
<td><a href="http://www.RuPilam.org" target="_blank" rel="noopener">Pi Lambda Phi</a></td>
<td><a href="http://www.sae.net/" target="_blank" rel="noopener">Sigma Alpha Epsilon</a></td>
<td><a href="http://rusammy.com/" target="_blank" rel="noopener">Sigma Alpha Mu</a></td>
<td><a href="http://www.sigmabetarho.com/" target="_blank" rel="noopener">Sigma Beta Rho</a></td>
<td><a href="http://www.rusigmapi.com/" target="_blank" rel="noopener">Sigma Pi</a></td>
<td><a href="http://www.tep.org/" target="_blank" rel="noopener">Tau Epsilon Phi</a></td>
<td><a href="http://www.thetachi.rutgers.edu/" target="_blank" rel="noopener">Theta Chi</a></td>
<td><a href="http://www.rutgerszbt.org/" target="_blank" rel="noopener">Zeta Beta Tau</a></td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
  <tr>
    <td>Ernst Handel</td>
    <td>Roland Mendel</td>
    <td>Austria</td>
  </tr>
</table>

<p><a href="#">Do it.</a></p>
</div>

<div id="Fun Facts" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
  <h3>Fun Facts</h3>
  <p>Paris is the capital of France.</p> 
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
     
</body>
</html> 

</body>
</html>