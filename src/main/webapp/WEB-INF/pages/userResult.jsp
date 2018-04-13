<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
 <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body> <h2>Food Pantry Result</h2>
    <table>
        <tr>
            <td>Food</td>
            <td>${u.food}</td>
        </tr>
        <tr>
            <td>Brand name</td>
            <td>${u.brandName}</td>
        </tr>
        <tr>
            <td>Food Description</td>
            <td>${u.foodDesc}</td>
        </tr>
        <tr>
            <td>Location</td>
            <td>${u.location}</td>
        </tr>
        <tr>
            <td>In Stock</td>
            <td>${u.inStock}</td>
        </tr>
        </table>
<a href = "viewAllFoodPantries.mvc">View all Pantry Items</a>
</body>
</html>