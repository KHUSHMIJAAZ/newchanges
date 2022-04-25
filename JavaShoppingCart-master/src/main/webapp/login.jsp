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
		<form action="userControl">
			<span style="margin: 500px right">Username:</span> <input type="text" name="username"> <br> <br> <br> <br>
			<span style="margin: 500px right">Password:</span> <input type="password" name="password"> <br> <br> <br> <br>
			<input type="hidden" name="action" value="login">
			<input id="button" type="submit" value="Login"> 
		</form>
	
	</div>
	
	
	
	<c:if test = "${param.login == 'failed'}">
	   	<p style="margin-right: 1160px;">Incorrect username or password</p>
	</c:if>
	<c:if test = "${param.signup == 'successful'}">
	   	<p style="margin-right: 1160px;">You account has been created ! Sign up with ur login cred</p>
	</c:if>
	
	<br> <br> <br> <br>
	<a style="margin-right: 1160px;color:black;" href="admin.jsp" >Admin Login here!</a>
	
	<br> <br> <br> <br>
	<a style="margin-right: 1160px;color:black;" href="signup.jsp" >Dont have credentials ? Sign Up!</a>
	
</body>
</html>
