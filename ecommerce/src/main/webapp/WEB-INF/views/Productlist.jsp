<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Angular js -->
<script src="<c:url value="/resources/js/angular.min.js" />"></script>
<!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Display Page</title>
</head>
<body>
<%@include file="Header.jsp"%>
<div class="container">
 		<br>
 		<div class=" row jumbotron">
 		
 		<h3>Manage Product list</h3>
 		</div>
 		<br>
 		<div class="row">
 		<a href="AddProduct" class="btn btn-primary btn-lg" role="button">Add New Product</a>
 	
 		</div>
 	</div>
 	
<div class="container">
<br>
<br>

<div ng-app ="mainApp" ng-controller="productController">
<div class="table-responsive">
<table class="table table-hover table-striped ">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Name</th>
        <th>Category</th>
        <th>Description</th>
        <th>Price</th>
        <th>Condition</th>
        <th>Status</th>
        <th>Units in Stock</th>
        <th>Manufacturer</th>
        <th>Image Name</th>
        <th>Crud Operations</th>
      </tr>
    </thead>
    <tbody>
   		<tr ng-repeat="p in productlist">
   			<td>{{p.pID}}</td>
   			<td>{{p.productName}}</td>
   			<td>{{p.productCategory}}</td>
   			<td>{{p.productDescription}}</td>
   			<td>{{p.productPrice}}</td>
   			<td>{{p.productCondition}}</td>
   			<td>{{p.productStatus}}</td>
   			<td>{{p.unitsInStock}}</td>
   			<td>{{p.productManufacturer}}</td>
   			<td>{{p.imgname}}</td>
   			<td></td>
   		 </tr>
		</tbody>	
	</table>
</div>
</div>
 </div>
    <br>
    <br>
    <br>
    <br>
    
  <script>	
 
 	var mainApp = angular.module("mainApp", []);
 	mainApp.controller("productController", function($scope){
	 
	 var json ='${products}';
	 var products=JSON.parse(json); 
	 $scope.productlist=products;
	 
	 
	 });
 
	
		
</script>
    
    <br><br><br><br>
  	<%@include file="Footer.jsp"%>


</body>
</html>