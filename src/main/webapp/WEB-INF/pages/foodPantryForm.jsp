<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>User Registration Form</h2>
<mvc:form modelAttribute="foodPantry" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="food">Food</mvc:label></td>
	        <td><mvc:input path="food" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="brandName">Brand Name</mvc:label></td>
	        <td><mvc:input path="brandName" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="foodDesc">Description</mvc:label></td>
	        <td><mvc:textarea path="foodDesc" /></td>
	    </tr>
            <tr>
            <td><mvc:label path="location">Location</mvc:label></td>
            <td><mvc:select path="location" items="${locations}" /></td>
        </tr>
        <tr>
            <td><mvc:label path="inStock">In Stock</mvc:label></td>
            <td><mvc:checkbox path="inStock" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllFoodPantries.mvc">View all Food Items</a>
</body>
</html>