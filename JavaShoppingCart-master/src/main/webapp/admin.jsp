<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/login.css'/>"/>
<title>Log In</title>
</head>

<body>

	<c:if test = "${user != null}">
		<% response.sendRedirect("shopping.jsp"); %>
		
	</c:if>
	
	<br> <br> <br> <br>
   	
	<h2 class="title">W-uniform Welcomes You</h2>
	
	<div class="loginbox">
	
		<h2>Log in</h2>
		<form action="adminControl">
			<span style="margin: 500px right">Username:</span> <input type="text" name="userid"> <br> <br> <br> <br>
			<span style="margin: 500px right">Password:</span> <input type="password" name="pwd"> <br> <br> <br> <br>
			<input type="hidden" name="action" value="admin">
			<input id="button" type="submit" value="admin"> 
		</form>
	
	</div>
	
	
	
	<c:if test = "${param.admin == 'failed'}">
	   	<p style="margin-right: 1160px;">Incorrect username or password</p>
	</c:if>
	
	

	
	<br> <br> <br> <br>
	<a style="margin-right: 1160px;color:black;" href="login.jsp" >Go back to User login</a>
	
</body>
</html>
