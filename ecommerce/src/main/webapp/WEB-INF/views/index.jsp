<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-
    Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Landing Page</title>
    <!-- Bootstrap -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <%@include file="Header.jsp"%>
  	
  <div class="container">
  	<div class="row">
  		<div class="col-md-4 col-sm-4 col-xs-12">
  			<img src="<c:url value="/resources/img/Chelsea.jpg"/>" alt="Jersey" class="img-circle">
  			<h2>English League</h2>
  			<p>Get this Chelsea Jersey at just 20$</p>
  			<a href="ProductPagination" class="btn btn-primary">BuyNow</a>
  		</div>
  		<div class="col-md-4 col-sm-4 col-xs-12">
  			<img src="<c:url value="/resources/img/Bayern.jpg"/>" alt="BayernJersey" class="img-circle">
  			<h2>German League</h2>
  			<p>Get this Bayern Jersey at just 20$</p>
  			<a href="#" class="btn btn-primary">BuyNow</a>
  		</div>
  		<div class="col-md-4 col-sm-4 col-xs-12">
  			<img src="<c:url value="/resources/img/Chelsea.jpg"/>" alt="MadridJersey" class="img-circle">
  			<h2>Spanish League</h2>
  			<p>Get this Madrid Jersey at just 30$</p>
  			<a href="#" class="btn btn-primary">BuyNow</a>
  		</div>
  	</div>
  </div><br><br>
  	<%@include file="Footer.jsp"%>

 
  </body>
</html>
