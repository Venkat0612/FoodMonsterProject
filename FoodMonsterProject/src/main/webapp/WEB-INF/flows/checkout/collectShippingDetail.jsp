<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="/WEB-INF/pages/header.jsp" %>
<style>
 body {
        background-color: #444;
        background: url(http://cdn.wallpapersafari.com/50/87/JrhiAB.jpg);
    }
.vertical-offset-100{
    padding-top:100px;
}
</style>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="topForm">
			<div id="top" align="center">
				<b><i>PAGE</i></b><button id="value" disabled="true">2</button>
			</div>
			<div class="container" align="justify">
				<div class="row vertical-offset-100">
				    <div class="col-md-5 col-md-offset-4">
				    	<div class="panel panel-default">
							 <div class="panel-heading">
							    <h3 class="panel-title" align="center"><i>Shipping Address Details</i></h3>
							 </div>
							<form:form modelAttribute="order">
							   <div class="form-group" align="center">
								   <label class="col-md-4 control-label" for="apartmentNumber">Apartment No</label>
								   <form:input path="cart.customer.shippingAddress.apartmentNumber" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
							   </div>
							   <div class="form-group" align="center">
								   <label class="col-md-4 control-label" for="streetName">Street Name</label>
								   <form:input path="cart.customer.shippingAddress.streetName" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
							   </div>
							   <div class="form-group" align="center">
								   <label class="col-md-4 control-label" for="city">City</label>
								   <form:input path="cart.customer.shippingAddress.city" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
							   </div>
							 <%--   <div class="form">
							   <label for="State">State</label>
							   <form:input path="cart.customer.shippingAddress.state" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
							   </div> --%>
							   <div class="form-group" align="center">
								   <label class="col-md-4 control-label" for="Country">Country</label>
								   <form:input path="cart.customer.shippingAddress.country" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
							   </div>
							   <div class="form-group" align="center">
								   <button name="_eventId_backToCollectCustomerInfo">Back</button>
								   <button name="_eventId_shippingDetailCollected">Next</button>
								   <button name="_eventId_cancel">cancel</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<br>
	<br>
	<br>
	<br>
	<br>
</html>
<%@ include file="/WEB-INF/pages/footer.jsp" %>