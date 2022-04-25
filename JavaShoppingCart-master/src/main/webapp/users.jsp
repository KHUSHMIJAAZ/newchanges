<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'/>"/>
<link rel="stylesheet" href="<c:url value='/resources/css/shopping.css'/>"/>
<title>users</title>
</head>
<body>
	
	<c:if test="${(admin == null)}">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	
	<ul>
		
		<li><a href="userControl?action=logout">Logout</a></li>
	</ul>
	
	<div class="main">
	
	
	 <div class="summary">
	<table>
    <c:forEach items="${admin}" var="user">
        <tr>
        <form action="adminControl">
            <td>${user.userid}</td>
        <input type="hidden" name="action" value="update1">
			<input type="hidden" name="userid" value="${user.userid}">
			<input id="update1" type="submit" value="update1">
			</form>
        </tr>
    </c:forEach>
	</table>
	</div> 
    
	
	
	
	
	</div>
	
</body>
</html>