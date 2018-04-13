<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Users</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Food</td>
				<td>${item.food}</td>
			</tr>
			<tr>
				<td>Brand Name</td>
				<td>${item.brandName}</td>
			</tr>
			<tr>
				<td>Food Description</td>
				<td>${item.foodDesc}</td>
			</tr>
			<tr>
				<td>Location</td>
				<td>${item.location}</td>
			</tr>
			<tr>
				<td>In Stock</td>
				<td>${item.inStock}</td>
			</tr>

		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="foodPantryForm.mvc">Add a new food item</a>
</body>
</html>