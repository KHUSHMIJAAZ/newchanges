<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/signup.css'/>"/>
<title>Sign Up</title>
</head>
<body>

	<c:if test = "${user != null}">
		<% response.sendRedirect("shopping.jsp"); %>
	</c:if>
	
	<br> <br> <br> <br>
   	<h2 class="title">W-uniform Welcomes You</h2>
   	
   	<div class="loginbox">
   	
		<h2>Sign Up</h2>
		<form action="userControl">
			<span>Username:</span> <input type="text" name="username"> <br> <br> <br> <br>
			<span>Password:</span> <input type="password" name="password"> <br> <br> <br> <br>
			<input type="hidden" name="action" value="signup">
			<input id="button" type="submit" value="Create Account">
		</form>
		
	</div>
	
	<c:if test = "${param.signup == 'failed'}">
   		<p style="margin-right: 1160px;">Dont try spaces it wont work or account already created</p>
	</c:if>
	<br> <br>
	<a style="margin-right: 1160px;color:black;" href="login.jsp">Back to Login</a>
</body>
</html>