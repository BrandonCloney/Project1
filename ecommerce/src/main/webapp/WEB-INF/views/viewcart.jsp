<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<!-- Angular js -->
<script src="<c:url value="/resources/js/angular.min.js" />"></script>
<!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jersey Store Cart</title>
</head>
<body>

	<%@include file="Header.jsp"%>
	<c:if test="${emptycart=='emptycart'}">
    
    <div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Your Cart is empty </h3>
 		</div>
 		<br>
 		
 	</div>
    </c:if>
    
    <c:if test="${emptycart=='notempty'}">
    
     <div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Your Cart </h3>
 		</div>
 		<br>
 		
 	</div>
 	
 	
 	<div class="container">
<br>
<br>

<div ng-app ="mainApp" ng-controller="productController">
<div class="table-responsive">
<table class="table table-hover table-striped ">
    <thead>
      <tr>
        
        <th>Product Name</th>
        <th>Brand</th>
        <th>Category</th>
        <th>Unit Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
      </tr>
    </thead>
    <tbody>
   		
   			<tr ng-repeat="p in productlist">
   			
   			<td>{{p.product.productName}}</td>
   			<td>{{p.product.productManufacturer}}</td>
   			<td>{{p.product.productCategory}}</td>
   			<td>Rs. {{p.product.productPrice}}</td>
   			<td>{{p.quantity}}</td>
   			<td>Rs. {{p.totalprice}}</td>
   			
   			</tr>





   		</tbody>
   		
   		
</table>
	
</div>
	<h4>Grand total = Rs. ${grandtotal}</h4>
</div>
 </div>
 	
 	
 	
    
 <center> <a href="cart_checkout" class="btn btn-success"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a></center>
    
    
    
    
    
    
    
    
    
    
    
    
    
 
 <script>	
 
 var mainApp = angular.module("mainApp", []);
 mainApp.controller("productController", function($scope){
	 
	 var json ='${cartitems}';
	 var products=JSON.parse(json); 
	 $scope.productlist=products;
	 
	 
 });
</script>
    
    
    
    
    
    
    </c:if>
    
    <br><br><br><br><br><br><br><br>
    <%@include file="Footer.jsp"%>
	








</body>
</html>