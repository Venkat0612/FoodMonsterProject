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
	     	<b><i>PAGE</i></b><button id="value" disabled="true">1</button>
	      </div>
	      <div class="container" align="justify">
			<div class="row vertical-offset-100">
			    <div class="col-md-4 col-md-offset-4">
			    	<div class="panel panel-default">
						 <div class="panel-heading">
						    <h3 class="panel-title" align="center"><i>Customer Details</i></h3>
						 </div>
						 <form:form modelAttribute="order">
						   <div class="form-group">
							   <label class="col-md-4 control-label" for="firstname">First Name</label>
							   <form:input path="cart.customer.firstname" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
						   </div>
						   <div class="form-group">
							   <label class="col-md-4 control-label" for="lastname">Last Name</label>
							   <form:input path="cart.customer.lastname" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
						   </div>
						   <div class="form-group">
							   <label class="col-md-4 control-label" for="email">Email</label>
							   <form:input path="cart.customer.email" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
						   </div>
						   <div class="form-group">
							   <label class="col-md-4 control-label" for="phonenumber">Phone Number</label>
							   <form:input path="cart.customer.phone" cssStyle="border:2px solid rgba(0,0,0,0.2)"/>
						   </div>
						   <button name="_eventId_customerInfoCollected">Next</button>
						   <button name="_eventId_cancel">cancel</button>
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
<br>
</html>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
