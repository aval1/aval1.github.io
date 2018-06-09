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
<h1>Busch Campus</h1>
<p>Busch campus startedafter a 256-acre tract was purchased by the then president Robert C. Clothier (sound familar?), and was named the River Road Campus. 
A stadium was completed in 1938 in land that was orignally a country club (hence the 18 hole golf course being on busch that is still used today),
and is where many athletic events were held until ****more information about stadium here*****

</p>
</div>

<form action="EmailSendingServlet" method="post">
        <table border="0" width="35%" align="center">
            <caption><h2>Send New E-mail</h2></caption>
            <tr>
                <td width="50%">Recipient address </td>
                <td><input type="text" name="recipient" size="50"/></td>
            </tr>
            <tr>
                <td>Subject </td>
                <td><input type="text" name="subject" size="50"/></td>
            </tr>
            <tr>
                <td>Content </td>
                <td><textarea rows="10" cols="39" name="content"></textarea> </td>
            </tr>
            <tr>
                <td colspan="2" align="center"><input type="submit" value="Send"/></td>
            </tr>
        </table>
         
    </form>
<c:if test="${not empty success}" >
	<c:if test="${success}" >
		<text>Account Creation Was Successful </text>
	</c:if>
	
	<c:if test="${not success}" >
		<text>Account Creation Failed </text>
	</c:if>
	
</c:if>
<footer>Copyright &copy; Big Pumba Studios</footer>
</body>
</html>