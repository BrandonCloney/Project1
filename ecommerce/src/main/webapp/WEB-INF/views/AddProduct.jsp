<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-
    Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Add Products Page</title>

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
<div class="container-wrapper">
        <div class="container">
            <div class="page-header">
                <h1>Add Product</h1>

                <p class="lead">Enter the product information: </p>
            </div>

            <form:form id="addproduct" method="post" action="addproduct" commandName="addprod">

                <div class="form-group">
                    <label for="name">Name</label>
                    <form:input type="text" path="productName" id="name" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="category">Category</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" 
                                                                    value="jersey"/>Jersey</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" 
                                                                    value="stockings"/>Stockings</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" 
                                                                    value="accessories"/>Accessories</label>
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <form:textarea path="productDescription" id="description" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="price">Price</label>
                    <form:input path="productPrice" id="price" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="condition">Condition</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" 
                                                                    value="new"/>new</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" 
                                                                    value="used"/>used</label>
                </div>

                <div class="form-group">
                    <label for="status">Status</label>
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" 
                                                                    value="available"/>Available</label>
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" 
                                                                    value="unavailable"/>UnAvailable</label>
                </div>

                <div class="form-group">
                    <label for="unitsInStock">Units in stock</label>
                    <form:input path="unitsInStock" id="unitsInStock" class="form-Control"/>
                </div>

                <div class="form-group">
                    <label for="condition">Manufacturer</label>
                    <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer" 
                                                                    value="adidas"/>Adidas</label>
                    <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer" 
                                                                    value="nike"/>Nike</label>
                </div>
                <br>
           		<input type="submit" value="submit" class="btn btn-primary" />
          
            </form:form>
            </div>
            </div>
           <br>
           <br>
           
		<%@include file="Footer.jsp"%>



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

</body>
</html>