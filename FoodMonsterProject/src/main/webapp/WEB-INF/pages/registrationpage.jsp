<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-fluid">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">

<body>
<style>
 body {
        background-color: #444;
        background: url(http://cdn.wallpapersafari.com/50/87/JrhiAB.jpg);
        
    }
</style>
<div class="container wrapper">
<div class="container">
<url:url value="/all/register" var="url"></url:url>
<form:form  action="${url }" modelAttribute="customer" method="post">
<table align="center" >
<tr>
<div class="form-group">
<label for="id"></label>
<form:hidden path="id" ></form:hidden>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>
</tr>
<center><h3>Registration Form</h3></center>
<tr>
<div class="form-group">
<td><label for="firstname">Enter first name</label></td>
<td><form:input path="firstname"></form:input></td>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>
</tr>

<tr>
<div class="form-group">
<td><label for="lastname">Enter last name</label></td>
<td><form:input path="lastname"></form:input></td>
<form:errors path="lastname" cssStyle="color:red"></form:errors>
</div>
</tr>

<tr>
<div class="form-group">
<td><label for="email">Enter email</label></td>
<td><form:input path="email"></form:input></td>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
</div>
</tr>

<tr>
<div class="form-group">
<td><label for="phone">Enter phone number</label></td>
<td><form:input path="phone"></form:input></td>
<form:errors path="phone" cssStyle="color:red"></form:errors>
</div>
</tr>
</table>
<br>

<table align="center" >
<tr>
<div class="form-group">
<td><label for="users.username">Enter username</label></td>
<td><form:input path="users.username"></form:input></td>
<form:errors path="users.username" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateUsername }</span>
</div>
</tr>

<tr>
<div class="form-group">
<td><label for="users.password">Enter password</label></td>
<td><form:input path="users.password" type="password"></form:input></td>
<form:errors path="users.password" cssStyle="color:red"></form:errors>
</div>
</tr>
</table>
<br>

<table align="center" >

<tr>
<div class="form-group">
<td><label for="billingAddress.streetName">Enter Street name</label></td>
<td><form:input path="billingAddress.streetName"></form:input></td>
<form:errors path="billingAddress.streetName" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="billingAddress.apartmentnumber">Enter Apartment number</label></td>
<td><form:input path="billingAddress.apartmentnumber"></form:input></td>
<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="billingAddress.city">Enter City</label></td>
<td><form:input path="billingAddress.city"></form:input></td>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
</div>
</tr>

<tr>
<div class="form-group">
<td><label for="billingAddress.country">Enter country</label></td>
<td><form:input path="billingAddress.country"></form:input></td>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="billingAddress.zipcode">Enter zipcode</label></td>
<td><form:input path="billingAddress.zipcode"></form:input></td>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</tr>
</table>
<br>
<table align="center" >

<tr>
<div class="form-group">
<td><label for="shippingAddress.streetName">Enter Street name</label></td>
<td><form:input path="shippingAddress.streetName"></form:input></td>
<form:errors path="shippingAddress.streetName" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="shippingAddress.apartmentnumber">Enter Apartment number</label></td>
<td><form:input path="shippingAddress.apartmentNumber"></form:input></td>
<form:errors path="shippingAddress.apartmentNumber" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="shippingAddress.city">Enter City</label></td>
<td><form:input path="shippingAddress.city"></form:input></td>
<form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="shippingAddress.country">Enter country</label></td>
<td><form:input path="shippingAddress.country"></form:input></td>
<form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="shippingAddress.zipcode">Enter zipcode</label></td>
<td><form:input path="shippingAddress.zipcode"></form:input></td>
<form:errors path="shippingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</tr>
</table>
<center><input type="submit" value="Register"></center>

</form:form></div>

</div>
</div>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>