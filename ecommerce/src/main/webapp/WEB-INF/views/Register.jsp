<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 <%@ page isELIgnored="false"%>
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
				<strong>User Registration</strong>
			</div>
			<div class="panel-body">
				<form:form id="register" method="post" action="adduser" commandName="userreg">
					<label for="firstName" class="control-label">Name:</label>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<form:input type="text" class="form-control" path="firstname" id="firstName" placeholder="First" />
						</div>
						<div class="col-md-6 padding-top-10">
							<form:input type="text" class="form-control" path="lastname" id="lastName" placeholder="Last" />
						</div>
					</div>
					<label for="address1" class="control-label padding-top-10">Address:</label>
					<div class="row padding-top-10">
						<div class="col-md-12">
							<form:input type="text" class="form-control" path="address" id="address" placeholder="Address line 1" />							
						</div>
					</div>
					<div class="row">						
						<div class="col-md-6 padding-top-10">
							<label for="city" class="control-label">City:</label>
							<form:input type="text" class="form-control" path="city" id="city" placeholder="Your city" />													
						</div>
						<div class="col-md-2 padding-top-10">
							<label for="stateorregion" class="control-label">State</label>
							<form:input type="text" class="form-control" path="state" id="state" placeholder="Your state" />																			
						</div>
						<div class="col-md-4 padding-top-10">
							<label for="zipcode" class="control-label">Zipcode:</label>
							<form:input type="text" class="form-control" path="zipcode" id="zipcode" placeholder="Your zipcode" />													
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="email" class="control-label">Email Address:</label>
							<form:input type="text" class="form-control" path="email" id="email" placeholder="Email Address" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="password" class="control-label">Password:</label>
							<form:input type="password" class="form-control" path="password" id="password" placeholder="Enter your password" />
						</div>
						<div class="col-md-6 padding-top-10">
							<label for="confirmpassword" class="control-label">Confirm Password:</label>
							<form:input type="password" class="form-control" path="confirmpassword" id="confirmpassword" placeholder="Confirm your password" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 padding-top-10">
							<label for="mobileno" class="control-label">MobileNo:</label>
							<form:input type="text" class="form-control" path="mobileno" id="mobileno" placeholder="Enter your Mobile Number"/>
						</div>
					</div><br>
					<div class="row">
						<div class="col-md-2">
							<button type="submit" class="btn btn-success">Register</button> 
						</div>
					</div>
				</form:form>
			</div>
		</div>
		<c:if test="${successmsg=='You Have Registered Successfully'}">
   			 <h2><c:out value="${successmsg}"></c:out></h2>
   			</c:if>
	</div>
	 <br>
	  <br>
	   <br>
	    <br>
	<%@include file="Footer.jsp"%>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    
    
</body>
</html>