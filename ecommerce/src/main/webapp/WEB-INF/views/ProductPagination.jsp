<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Pagination</title>
	<!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
</head>
<body>
<%@include file="Header.jsp"%>
	<div class="container" id="product-section">
 	  <div class="row">
   		<div class="col-md-6">
    		<img src="<c:url value="/resources/img/Chelsea.jpg"/>" class="img-thumbnail" alt="Jersey" class="image-responsive">		
   		</div>
   		<div class="col-md-6">
    		<div class="row">
  			<div class="col-md-12">
   			<h1>Chelsea Football Club Jersey</h1>
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
  				Classic Chelsea Kit. Official Adidas Sponsors
   			 	Amazing Fabric,Customized Name And Number Also Done!
  				</p>
 				</div>
			</div>
			<div class="row">
 				<div class="col-md-3">
  				<span class="sr-only">Four out of Five Stars</span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star"></span>
  				<span class="glyphicon glyphicon-star-empty"></span>
  				<span class="label label-success">45</span>
 				</div>
 			<div class="col-md-3">
  				<span class="monospaced">Write a Review</span>
 			</div>
			</div>
			
  	 	</div><!-- end row -->
 	</div><!-- end container -->
	</div><br><br><br>
	<%@include file="Footer.jsp"%>


</body>
</html>