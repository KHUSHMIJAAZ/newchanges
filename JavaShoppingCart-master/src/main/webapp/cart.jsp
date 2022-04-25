<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/navbar.css'/>"/>
<link rel="stylesheet" href="<c:url value='/resources/css/cart.css'/>"/>
<title>Cart</title>
</head>
<body>

	<c:if test="${user == null}">
		<c:redirect url="login.jsp"/>
	</c:if>
	
	
	<ul>
		<li><a href="shopping.jsp">Shop</a></li>
		<li><a class="active" href="cart.jsp">Cart</a></li>
		<li><a href="inventory.jsp">Inventory</a></li>
		<li><a href="userControl?action=logout">Logout</a></li>
	</ul>
	
	<h2>MY SHOPPING CART</h2>
	
	<div class="containerBar">
		<div>PRODUCT</div>
		<div>QUANTITY</div>
		<div>PRICE</div>
		<div>TOTAL PRICE</div>
	</div>
	
	<hr class="solid">
	
	<c:set var = "total" scope = "session" value = "${0}"/>
	
	<c:if test="${item1 != null}">
		<div class="container">
			<img src="<c:url value='/resources/images/1.png'/>" alt="White Crew Shirt">
			<span>White Crew Shirt</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="item" value="item1">
				<input type="text" name="quantity" value="${item1}">
				<input type="submit" value="Update">
			</form>
			<span>$80.00</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="remove">
				<input type="hidden" name="item" value="item1">
				<input type="submit" value="Remove Item">
			</form>
			<span>$<c:out value="${item1 * 80}"/>.00</span>
		</div>
		<c:set var = "total" scope = "session" value = "${total + item1 * 80}"/>
	</c:if>
	
	<c:if test="${item2 != null}">
		<div class="container">
			<img src="<c:url value='/resources/images/2.png'/>" alt="White Crew Shirt black jacket">
			<span>White Crew Shirt black jacket</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="item" value="item2">
				<input type="text" name="quantity" value="${item2}">
				<input type="submit" value="Update">
			</form>
			<span>$1000.00</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="remove">
				<input type="hidden" name="item" value="item2">
				<input type="submit" value="Remove Item">
			</form>
			<span>$<c:out value="${item2 * 1000}"/>.00</span>
		</div>
		<c:set var = "total" scope = "session" value = "${total + item2 * 1000}"/>
	</c:if>
	
	<c:if test="${item3 != null}">
		<div class="container">
			<img src="<c:url value='/resources/images/6.png'/>" alt="white  Denim">
			<span>white  Denim</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="item" value="item3">
				<input type="text" name="quantity" value="${item3}">
				<input type="submit" value="Update">
			</form>
			<span>$150.00</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="remove">
				<input type="hidden" name="item" value="item3">
				<input type="submit" value="Remove Item">
			</form>
			<span>$<c:out value="${item3 * 150}"/>.00</span>
		</div>
		<c:set var = "total" scope = "session" value = "${total + item3 * 150}"/>
	</c:if>
	
	<c:if test="${item4 != null}">
		<div class="container">
			<img src="<c:url value='/resources/images/3.png'/>" alt="White Blue Denim">
			<span>White Blue Denim</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="item" value="item4">
				<input type="text" name="quantity" value="${item4}">
				<input type="submit" value="Update">
			</form>
			<span>$8.00</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="remove">
				<input type="hidden" name="item" value="item4">
				<input type="submit" value="Remove Item">
			</form>
			<span>$<c:out value="${item4 * 8}"/>.00</span>
		</div>
		<c:set var = "total" scope = "session" value = "${total + item4 * 8}"/>
	</c:if>
	
	<c:if test="${item5 != null}">
		<div class="container">
			<img src="<c:url value='/resources/images/4.png'/>" alt="Casual White T-Shirt">
			<span>Casual White T-Shirt</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="item" value="item5">
				<input type="text" name="quantity" value="${item5}">
				<input type="submit" value="Update">
			</form>
			<span>$6650.00</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="remove">
				<input type="hidden" name="item" value="item5">
				<input type="submit" value="Remove Item">
			</form>
			<span>$<c:out value="${item5 * 6650}"/>.00</span>
		</div>
		<c:set var = "total" scope = "session" value = "${total + item5 * 6650}"/>
	</c:if>
	
	<c:if test="${item6 != null}">
		<div class="container">
			<img src="<c:url value='/resources/images/5.png'/>" alt="formal White Shirt">
			<span>formal White Shirt</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="update">
				<input type="hidden" name="item" value="item6">
				<input type="text" name="quantity" value="${item6}">
				<input type="submit" value="Update">
			</form>
			<span>$2000.00</span>
			<form action="inventoryControl">
				<input type="hidden" name="action" value="remove">
				<input type="hidden" name="item" value="item6">
				<input type="submit" value="Remove Item">
			</form>
			<span>$<c:out value="${item6 * 2000}"/>.00</span>
		</div>
		<c:set var = "total" scope = "session" value = "${total + item6 * 2000}"/>
	</c:if>
	
	<hr class="solid">
	
	<div class="summary">
		<span class="ordersummary">ORDER SUMMARY</span>
		<span>Order Total:</span>
		<span>$<c:out value="${total}"/>.00</span>
		<form action="inventoryControl">
			<input type="hidden" name="action" value="checkout">
			<input type="hidden" name="total" value="${total}">
			<input id="checkout" type="submit" value="Checkout">
		</form>
		<c:if test="${param.checkout == 'failed'}">
			<span>You do not have the enough funds to checkout.</span>
		</c:if>
		<c:if test="${param.checkout == 'successful'}">
			<span>Checkout was successful! Check your Inventory for items.</span>
		</c:if>
		
	</div>

</body>
</html>