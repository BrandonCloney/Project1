<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>German League</title>
	<!-- Angular js -->
<script src="<c:url value="/resources/js/angular.min.js" />"></script>
	<!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<%@include file="Header.jsp"%>
<div ng-app ="mainApp" ng-controller="productController">
	<div class="container" id="product-section">
 	  <div class="row" ng-repeat="p in productlist">
   		<div class="col-md-6">
    		<img src="<c:url value="/resources/img/imguploads/{{p.imgname}}"/>" class="img-thumbnail" alt="Jersey" class="image-responsive">		
   		</div>
   		<div class="col-md-6">
    		<div class="row">
  			<div class="col-md-12">
   			<h1>{{p.productName}}</h1>
			 </div>		
   			</div>
   			<div class="row">
 				<div class="col-md-12">
  				<span class="label label-primary">Classic</span>
  				<span class="monospaced">No.1</span>
 				</div>
			</div>
			<div class="row">
 				<div class="col-md-12">
  				<p class="description">
  				{{p.productDescription}}
  				</p>
 				</div>
			</div>
			<div class="row">
 				<div class="col-md-6">
  				<span class="sr-only">Four out of Five Stars</span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star-empty"></span>
  				<span class="label label-success">In-Stock:{{p.unitsInStock}}</span>
 				</div>
 			
			</div>
			<div class="row">
 				<div class="col-md-12">
  				<p class="description">
  				Sponsors:{{p.productManufacturer}}
  				</p>
 				</div>
			</div>
			<div class="row">
 				<div class="col-md-12">
  				<p class="description">
  				Price:Rs.{{p.productPrice}}
  				</p>
 				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<a href="additemtocart?productid={{p.pID}}" class="btn btn-primary">AddToCart</a>
				</div>
			</div>
			
  	 	</div><!-- end row -->
 	</div><!-- end container -->
	</div>
	</div><br><br><br>
	<script>	
 
 	var mainApp = angular.module("mainApp", []);
 	mainApp.controller("productController", function($scope){
	 
	 var json ='${products}';
	 var products=JSON.parse(json); 
	 $scope.productlist=products;
	 
	 
	 });
 
	
		
</script>
	
	
	<%@include file="Footer.jsp"%>


</body>
</html>