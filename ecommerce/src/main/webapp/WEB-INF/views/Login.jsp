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
    <title>Login Page</title>

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
	<div class="container padding-top-10">
		<div class="panel panel-default">
			<div class="panel-heading">
				Login
			</div>
			<div class="panel-body">
				<form action="<c:url value='j_spring_security_check' />" method="POST">
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="email" class="control-label">Email Address:</label>
							<input type="text"  name='j_username' class="form-control" id="email" placeholder="Email Address" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="password" class="control-label">Password:</label>
							<input type="password"  name='j_password' class="form-control" id="password" placeholder="Enter your password" />
						</div>
					</div><br>
					<div class="row">
						<div class="col-md-2">
							<button type="submit" class="btn btn-success">Login</button>
						</div>
					</div>
					</form>
			</div>
		</div>
	</div><br><br><br><br>
	<%@include file="Footer.jsp"%>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
   
</body>
</html>