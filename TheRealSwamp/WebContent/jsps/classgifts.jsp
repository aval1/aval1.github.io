<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div>
<h1>Livingston</h1>
<p> The Long History of Rutgers and New Brunswick goes way back into the 1800s.
It seems that a lot of these historical tidbits have been lost in the translation of time.
I'm here to see that shit come back to life </p>
</div>

<form action="${pageContext.request.contextPath}/ClassGifts" method="post">
<p>Class Year: <input type="text" name="classYear" value="${classYear}"/></p>
<p>Gift Name: <input type="text" name="giftName" value="${giftName}"/></p>
<p>Info: <input type="text" name="info" value="${info}"/></p>
<p>Location: <input type="text"  name="location" value="${location}"/></p>
<p>Extra: <input type="text" name="extra" value="${extra}"/></p>
<p>Strategy: 
	<select name="strategy">
		<option value="Moderate">Moderate </option>
		<option value="Aggressive">Aggressive</option>
		<option value="Conservative">Conservative</option>
	</select>
</p>
	<br> <br>
	<input type="submit" name="Submit" value="submit" > 
</form>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<form method="post">

<table border="2">
<tr>
<td>user ID</td>
<td>Birthday</td>
<td>Gender</td>
<td>First Name</td>
<td>Last Name</td>
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://localhost:3307/sakila";
String username="root";
String password="root";
String query="select * from classgifts";
Connection conn=DriverManager.getConnection(url, username, password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
<tr><td><%=rs.getInt("classYear") %></td>
<td><%=rs.getString("giftName") %></td>
<td><img src="<%=rs.getString("info") %>"></td>
<td><%=rs.getString("location") %></td>
<td><%=rs.getString("extra") %></td></tr>

 <%
}
%>
</table>
<%
rs.close();
stmt.close();
conn.close();
}
catch(Exception e)
{
e.printStackTrace();
}
%>
</form>
<!--
<div>
<h3>Class Gifts</h3>
<p>https://muckgers.com/then-and-now-a-photographic-study-of-rutgers-college-avenue-campus-part-1-9335c35d0142 </p>
<p> https://muckgers.com/then-and-now-a-photographic-study-of-rutgers-college-avenue-campus-part-2-5d487a9b0ed9 </p>
<table border="2">
<tr>
<td>Class Year</td>
<td>Gift Name</td>
<td>Description</td>
<td>Picture</td>
<td>Location</td>
</tr>
<tr>
<td>1882</td>
<td>Class of 1882 Gates</td>
<td>The Class of 1882 Gates, located on the corner of Somerset Street and College Avenue, 
were erected in 1907 and presented to Rutgers during the class reunion of that year. <sup><a href="https://www.libraries.rutgers.edu/scua/paths-to-historic-rutgers#1882"  target="_blank">[s]</a></sup></td>
<td><img src="${pageContext.request.contextPath}/jsps/images/ClassGifts/Hamilton.jpg"></td>
<td>location *link to map*</td>
</tr>
<tr>
<td>1883</td>
<td>Class of 1883 Gates</td>
<td> laced at the principal entrance to the Queen's campus on the corner of George and Somerset streets, the Gates were erected in 1904 by the Class of 1883, in commemoration of the twentieth anniversary of its graduation. The gates were designed by architect Frederick P. Hill, a member of the class, and built at the cost of $2000. In 1929 the gates were redesigned under Hill's supervision to adapt to modern taste and traffic conditions. <sup><a href="https://www.libraries.rutgers.edu/scua/paths-to-historic-rutgers#1883"  target="_blank">[s]</a></sup></td>
<td><img src="${pageContext.request.contextPath}/jsps/images/ClassGifts/Hamilton.jpg"></td>
<td>location *link to map*</td>
</tr>
<tr>
<td>1899</td>
<td>Alexander Hamilton Historical Marker</td>
<td>This marks the stand taken by Alexander Hamilton and his artillerymen atop the bluffs overlooking the Raritan River to delay the advance of General Cornwallis on December 1, 1776.
His battery of cannon trained on t6he fording place held back the British advance on New Brunswick long enough for the remnants of Washington's battered army to decamp and continue their retreat through Princeton to Trenton and across the Delaware River to safety in Pennsylvania.</td>
<td><img src="${pageContext.request.contextPath}/jsps/images/ClassGifts/Hamilton.jpg"></td>
<td>location *link to map*</td>
</tr>
<tr>
<td>1902</td>
<td>Class of 1902 Memorial Gateway</td>
<td>Erected in 1904 by the Class of 1902, the Gateway is located on Hamilton Street behind Old Queen's. 
It is where graduates used to march through on thier way to thier commencement ceremony. (Now they go to the football stadium) <sup><a href="https://www.libraries.rutgers.edu/scua/paths-to-historic-rutgers#1902"  target="_blank">[s]</a></sup></td>
<td><img src="${pageContext.request.contextPath}/jsps/images/ClassGifts/Hamilton.jpg"></td>
<td>location *link to map*</td>
</tr>
<tr>
<td>1956</td>
<td>Rutgers Gateway Clock</td>
<td>The class of 1956 dedicated thier alumni fund to help build the Rutgers clock tower that covers the Barnes and Nobles bookstore on college ave. <sup><a href="http://www.alumni.rutgers.edu/show_module_fw2.aspx?sid=896&gid=1&ecid=5262&control_id=644&nologo=1&cvprint=1&page_id=252&crid=0&scontid=-1&viewas=user"  target="_blank">[s]</a></sup></td>
<td><img src="${pageContext.request.contextPath}/jsps/images/ClassGifts/Hamilton.jpg"></td>
<td>location *link to map*</td>
</tr>
<td>${ids}</td>
<td>${item}</td>
<td>${rating}</td>
<td>${votes}</td>
<td>${average}</td>
<td>${value}</td>
<td>${value2}</td>
</tr>
</table>
  <ul>
	<li>Class of 1899: Historical Marker for Alexander Hamilton Battle</li>
	<li>Buncha Gates</li>
	<li>ScoreBoard in the Barn Gym</li>
	<li>Class of 1937: Plaza next to Stonier and Tinsley</li>
	<li>Class of 1956: The Rutgers Clock at Barnes and Nobles http://www.support.rutgers.edu/s/896/Foundation/GiveReunionClasses.aspx?sid=896&gid=1&pgid=6983</li>
	
	<li></li>
</ul> 
</div>
 -->

  <footer>Copyright &copy; Big Pumba Studios</footer>   
</body>
</html> 