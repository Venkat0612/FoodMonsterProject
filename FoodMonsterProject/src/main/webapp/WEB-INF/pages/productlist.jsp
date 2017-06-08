<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>
<body  ng-app="product" ng-controller="ProController" ng-init="getObj()">
<%@ include file="header.jsp" %>
<div class="container">
<div id="slider">
 <ul class="slides">
        <c:forEach var="p" items="${newarrivals}" >
          <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
          <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <li class="slide"><a href="${url }"><img src="${sr }"/><span id="product_name">${p.name }</span></a>
           <br/><span id="new">NEW</span><span id="pro_price">INR ${p.price }</span>
           </li>
           
         </c:forEach>
  </ul>
  </div>

<table  >
<tr>
<th >Product Name</th><th>Price</th><th>Action</th>
</tr>

<c:forEach items="${products}" var="p" >
<tr>
<c:url value="/resources/images/${p.id }.jpg" var="url"></c:url>
<td><img src="${url }" height="50" width="50" ></td>
<td >${p.name}</td><td>${p.price }</td>
<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>
<td><a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a></td>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/editproduct/${p.id }" var="url2"></url:url>
<td><a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">
<url:url value="/admin/product/deleteproduct/${p.id }" var="url1"></url:url>
<td><a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
</sec:authorize>
</td>
</tr>
</c:forEach>
</table>
</div>
</body>


<c:url var="script7" value="/resources/js/productcontroller.js"></c:url>
<script src="${script7}"></script> 
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 
<c:url var="script9" value="/resources/js/headercontroller.js"></c:url>
  <script src="${script9}"></script>
</html>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<%@ include file="footer.jsp" %>


<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Products</title>

<c:url var="style" value="/resources/css/productlis.css"></c:url>
<link rel="stylesheet" href="${style}"/>
<c:url var="script10" value="/resources/js/header.js"></c:url>
<script src="${script10}"></script>
 <script>
    $(document).ready(function(){
      $('#buy').css('color','red');
    });
 </script>
<c:url var="style6" value="/resources/css/imagedisplay.css"></c:url>
  <link rel="stylesheet" href="${style6}"/> 
   <c:url var="script2" value="/resources/js/imagedisplay.js"></c:url>
  <script src="${script2}"></script>
  <style>
    #pro_price{
      margin-left:14%;
      font-size:20px;
      font-weight:bold;
      
    }
    #new{
      margin-left:10%;
      font-weight:bold;
      font-size:16px;
    }
    .tool{
       margin-top:57%;
    }
  </style>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>

<body ng-app="product" ng-controller="ProController" ng-init="getObj()">

<h1 id="sale">NEW ARRIVALS</h1>
<span class="glyphicon glyphicon-chevron-left clickleft"></span><span class="glyphicon glyphicon-chevron-right clickright"></span>
<div id="slider">
 <ul class="slides">
        <c:forEach var="p" items="${newarrivals}" >
          <c:url var="sr" value="/all/product/image/${p.id}"></c:url>
          <c:url var="url" value="/all/product/viewproduct/${p.id}"></c:url>
           <li class="slide"><a href="${url }"><img src="${sr }"/><span id="product_name">${p.name }</span></a>
           <br/><span id="new">NEW</span><span id="pro_price">INR ${p.price }</span>
           </li>
           
         </c:forEach>
  </ul>
  </div>
<br/>
<h1 id="sale">All BAGS</h1>
<br/>
<br/>
<div class="upper">
<div class="sortByCategory">

   <span class="text">Search</span>
  <input id="input" type="text" ng-model="search"/>
  <span class="searchtext">Search By</span>
  <ul class="categories">
     <li id="all"><input type="radio" ng-model="search" value=" " >All</li>
     <li id="arrival"><input type="radio" ng-model="search" value="fresh" >New Arrivals</li>
     <li id="discount"><input type="radio" ng-model="search" value="discount" >Discount</li>
     <li id="general"><input type="radio" ng-model="search" value="general" >General</li>
  </ul>
 </div>
 <div class="orderby">
  <span class="ordertext">Order By</span>
   <ul class="sorting">
    <li id="name"><input type="radio" ng-model="order" value="name">name</li>
    <li id="low"><input type="radio" ng-model="order" value="price" >Low Price</li>
    <li id="high"><input type="radio" ng-model="order" value="-price">High Price</li>
    <li id="high"><input type="radio" ng-model="order" value="mfg">Manufactured Date</li>
   </ul>
 </div>
</div>
  <ul class="productlist">
       
      <span class="tool" ng-show="value">product sucessfully added to the cart<span ng-click="value=false"class="tip">X</span></span>
       <li ng-repeat="product in obj| orderBy:order | filter:search ">
       
                <c:url var="sr" value="/all/product/image/{{product.id}}"></c:url>
                <c:url var="url" value="/all/product/viewproduct/{{product.id}}"></c:url>
                
                <a href="${url}"><img ng-src="${sr }" height="200px" width="200px"/><br/></a>
                <span id="pro_name">{{product.name}}</span><br/>
                    
            
                 
                 
                <div class="image_below"><button id="buy" ng-click="addToCart(product.id)">BUY NOW</button> <span id="inr">INR {{product.price}}</span></div> 
           
           
            
       <security:authorize access="hasRole('ROLE_ADMIN')"> 
           <c:url var="delete" value="/admin/product/deleteproduct/{{product.id}}"></c:url>
           <a href="${delete}"><span class="remove">Remove</span></a>
           <c:url var="edit" value="/admin/product/editform/{{product.id}}"></c:url>
           <a href="${edit}"><span class="edit">Edit</span></a></td>
       </security:authorize>
      </li>
  </ul>
</body>

<c:url var="script7" value="/resources/js/productcontroller.js"></c:url>
<script src="${script7}"></script> 
<c:url var="script6" value="/resources/js/controller.js"></c:url>
<script src="${script6}"></script> 
<c:url var="script9" value="/resources/js/headercontroller.js"></c:url>
  <script src="${script9}"></script>
</html> --%>