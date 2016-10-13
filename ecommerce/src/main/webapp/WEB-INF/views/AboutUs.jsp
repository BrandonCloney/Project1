<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Bootstrap -->
   <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<title>About Us</title>
</head>
<body>
<%@include file="Header.jsp"%>
	<!-- Page Content -->
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-8">
                <h2>Store Information</h2>
                <p>An E-Commerce Website thats brings to your doorstep amazing first team KITS of the favourite club you support</p>
                <p>We are currently selling jerseys of 3 different leagues English, Spanish and German respectively. We shall soon bring to you other league jerseys as our Store are yet to get the rights to sell  !!</p>
            </div>
            <div class="col-sm-4">
                <h2>Contact Us</h2>
                <address>
                    <strong>JERSEY STORE</strong>
                    <br>Vetri City
                    <br>Beverly Hills, CA 90210
                    <br>
                </address>
                <address>
                    <abbr title="Phone">Ph: </abbr>(+91) 98403-99632
                    <br>
                    <abbr title="Email">E-mail: </abbr> bcloney95@gmail.com
                </address>
            </div>
        </div>
        <!-- /.row -->

        <hr>
                
        <div class="row">
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="<c:url value="/resources/img/marketing1.png"/>" alt="epl">
                <h2>Premier League</h2>
                <p>Pick Up Your favourite club jersey from the English top tier football league at amazingly cheap prices from our store.</p>
            </div>
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="<c:url value="/resources/img/marketing2.png"/>" alt="ligabbva">
                <h2>Liga BBVA</h2>
                <p>Pick Up Your favourite club jersey from the Spanish top tier football league at amazingly cheap prices from our store.</p>
            </div>
            <div class="col-sm-4">
                <img class="img-circle img-responsive img-center" src="<c:url value="/resources/img/marketing3.png"/>" alt="bundesliga">
                <h2>Bundesliga</h2>
                <p>Pick Up Your favourite club jersey from the German top tier football league at amazingly cheap prices from our store.</p>
            </div>
        </div>
        </div><br><br><br><br>
        
<%@include file="Footer.jsp"%>


</body>
</html>