<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'/>"/>
<link rel="stylesheet" href="<c:url value='/resources/css/shopping.css'/>"/>
<title>Shopping</title>
</head>
<body>
	
	<c:if test="${(user == null)}">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	
	<ul>
		<li><a class="active" href="shopping.jsp">Shop</a></li>
		<li><a href="cart.jsp">Cart</a></li>
		<li><a href="inventory.jsp">Inventory</a></li>
		<li><a href="userControl?action=logout">Logout</a></li>
	</ul>
	
	<div class="main">
	
	<div class="container">
		<img src="<c:url value='/resources/images/1.png'/>" alt="White Crew Shirt">
		<span class="title">White Crew Shirt</span>
		<span>$80.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="item" value="item1">
			<div><span>Quantity: </span><input type="text" name="quantity"></div>
			<input type="submit" value="Add to cart">
		</form>
	</div>
	
	<div class="container">
		<img src="<c:url value='/resources/images/2.png'/>" alt="White Crew Shirt black jacket">
		<span class="title">White Crew Shirt black jacket</span>
		<span>$1000.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="item" value="item2">
			<div><span>Quantity: </span><input type="text" name="quantity"></div>
			<input type="submit" value="Add to cart">
		</form>
	</div>
	
	<div class="container">
		<img src="<c:url value='/resources/images/6.png'/>" alt="white  Denim">
		<span class="title">white  Denim</span>
		<span>$150.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="item" value="item3">
			<div><span>Quantity: </span><input type="text" name="quantity"></div>
			<input type="submit" value="Add to cart">
		</form>
	</div>
	
	<div class="container">
		<img src="<c:url value='/resources/images/3.png'/>" alt="White Blue Denim">
		<span class="title">White Blue Denim</span>
		<span>$8.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="item" value="item4">
			<div><span>Quantity: </span><input type="text" name="quantity"></div>
			<input type="submit" value="Add to cart">
		</form>
	</div>
	
	<div class="container">
		<img src="<c:url value='/resources/images/4.png'/>" alt="Casual White T-Shirt">
		<span class="title">Casual White T-Shirt</span>
		<span>$6650.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="item" value="item5">
			<div><span>Quantity: </span><input type="text" name="quantity"></div>
			<input type="submit" value="Add to cart">
		</form>
	</div>
	
	<div class="container">
		<img src="<c:url value='/resources/images/5.png'/>" alt="formal White Shirt">
		<span class="title">formal White Shirt</span>
		<span>$2000.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="item" value="item6">
			<div><span>Quantity: </span><input type="text" name="quantity"></div>
			<input type="submit" value="Add to cart">
		</form>
	</div>
	
	</div>
	
</body>
</html>