<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'/>"/>
<link rel="stylesheet" href="<c:url value='/resources/css/inventory.css'/>"/>
<title>Inventory</title>
</head>
<body>

	<c:if test="${user == null}">
		<c:redirect url="login.jsp"/>
	</c:if>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
   	%>
	
	<ul>
		<li><a href="shopping.jsp">Shop</a></li>
		<li><a href="cart.jsp">Cart</a></li>
		<li><a class="active" href="inventory.jsp">Inventory</a></li>
		<li><a href="userControl?action=logout">Logout</a></li>
	</ul>
	
	<h2>MY INVENTORY</h2>
	
	<div class="containerBar">
		<div>ITEM</div>
		<div>QUANTITY</div>
	</div>
	
	<hr class="solid">
	
	<c:forEach items="${inventory.getItems()}" var="entry">
		<c:if test="${entry.value > 0}">
		
			<c:if test="${entry.key == 'item1'}">
				<div class="container">
					<img src="<c:url value='/resources/images/1.png'/>" alt="White Crew Shirt">
					<span>White Crew Shirt</span>
					<c:out value="${entry.value}"/>
				</div>
			</c:if>
			
			<c:if test="${entry.key == 'item2'}">
				<div class="container">
					<img src="<c:url value='/resources/images/2.png'/>" alt="White Crew Shirt black jacket">
					<span>White Crew Shirt black jacket</span>
					<c:out value="${entry.value}"/>
				</div>
			</c:if>

			<c:if test="${entry.key == 'item3'}">
				<div class="container">
					<img src="<c:url value='/resources/images/6.png'/>" alt="white  Denim">
					<span>white  Denim</span>
					<c:out value="${entry.value}"/>
				</div>
			</c:if>
			
			<c:if test="${entry.key == 'item4'}">
				<div class="container">
					<img src="<c:url value='/resources/images/3.png'/>" alt="White Blue Denim">
					<span>White Blue Denim</span>
					<c:out value="${entry.value}"/>
				</div>
			</c:if>
			
			<c:if test="${entry.key == 'item5'}">
				<div class="container">
					<img src="<c:url value='/resources/images/4.png'/>" alt="Casual White T-Shirt">
					<span>Casual White T-Shirt</span>
					<c:out value="${entry.value}"/>
				</div>
			</c:if>
			
			<c:if test="${entry.key == 'item6'}">
				<div class="container">
					<img src="<c:url value='/resources/images/5.png'/>" alt="formal White Shirt">
					<span>formal White Shirt</span>
					<c:out value="${entry.value}"/>
				</div>
			</c:if>
			
		</c:if>
    </c:forEach>
</body>
</html>