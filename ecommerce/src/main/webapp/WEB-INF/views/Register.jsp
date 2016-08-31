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
    <title>Registration Page</title>

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
				Registration
			</div>
			<div class="panel-body">
				<form>
					<label for="firstName" class="control-label">Name:</label>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<input type="text" class="form-control" id="firstName" placeholder="First" />
						</div>
						<div class="col-md-6 padding-top-10">
							<input type="text" class="form-control" id="lastName" placeholder="Last" />
						</div>
					</div>
					<label for="address1" class="control-label padding-top-10">Address:</label>
					<div class="row padding-top-10">
						<div class="col-md-12">
							<input type="text" class="form-control" id="address1" placeholder="Address line 1" />							
						</div>
					</div>
					<div class="row padding-top-10">
						<div class="col-md-12">
							<input type="text" class="form-control" id="address2" placeholder="Address line 2" />							
						</div>
					</div>
					<div class="row">						
						<div class="col-md-6 padding-top-10">
							<label for="city" class="control-label">City:</label>
							<input type="text" class="form-control" id="city" placeholder="Your city" />													
						</div>
						<div class="col-md-2 padding-top-10">
							<label for="stateorregion" class="control-label">State / Region:</label>
							<input type="text" class="form-control" id="stateorregion" placeholder="Your state / region" />																			
						</div>
						<div class="col-md-4 padding-top-10">
							<label for="zipcode" class="control-label">Zipcode:</label>
							<input type="text" class="form-control" id="zipcode" placeholder="Your zipcode" />													
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="email" class="control-label">Email Address:</label>
							<input type="text" class="form-control" id="email" placeholder="Email Address" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="password" class="control-label">Password:</label>
							<input type="password" class="form-control" id="password" placeholder="Enter your password" />
						</div>
						<div class="col-md-6 padding-top-10">
							<label for="confirmpassword" class="control-label">Confirm Password:</label>
							<input type="password" class="form-control" id="confirmpassword" placeholder="Confirm your password" />
						</div>
					</div><br>
					<div class="row">
						<div class="col-md-2">
							<button type="button" class="btn btn-success">Register</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%@include file="Footer.jsp"%>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    
</body>
</html>