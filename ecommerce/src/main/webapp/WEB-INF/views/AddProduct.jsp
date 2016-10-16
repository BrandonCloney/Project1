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
        <div class="container padding-top-10">
		<div class="panel panel-default">
			<div class="panel-heading">
				<strong>Add Product</strong>
				<p> Enter the product information!!</p>
			</div>
			<div class="panel-body">

            <form:form id="addproduct" method="post" action="newproduct" 
            commandName="addprod" enctype="multipart/form-data">

                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="name">Name</label>
                    <div class="col-md-6 padding-top-10">
                    <form:input type="text" path="productName" id="name" class="form-Control"/>
               		 </div>
               	</div>
                </div>
           <div class="form-group">
           <div class="row">
           	 <label class="col-md-2 control-label" for="category">Category</label>
            	<div class="col-md-4">
            	<form:select name="category" path="productCategory"  class="form-control" id="category">
         
         	    <option value="English League">English League</option>
            	<option value="Spanish League">Spanish League</option>
              	<option value="German League">German League</option>  
				</form:select>
			</div>
			</div>
			</div>
                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="description">Description</label>
                    <div class="col-md-6 padding-top-10">
                    <form:textarea path="productDescription" id="description" class="form-Control"/>
                	</div>
                	</div>
                </div>

                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="price">Price</label>
                    <div class="col-md-6 padding-top-10">
                    <form:input path="productPrice" id="price" class="form-Control"/>
                	</div>
                </div></div>

                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="condition">Condition</label>
                    <div class="col-md-6 padding-top-10">
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" 
                                                                    value="new"/>new</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" 
                                                                    value="used"/>used</label>
                	</div>
                	</div></div>

                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="status">Status</label>
                    <div class="col-md-6 padding-top-10">
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" 
                                                                    value="available"/>Available</label>
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" 
                                                                    value="unavailable"/>UnAvailable</label>
                	</div>
                </div></div>

                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="unitsInStock">Units in stock</label>
                    <div class="col-md-6 padding-top-10">
                    <form:input path="unitsInStock" id="unitsInStock" class="form-Control"/>
               		 </div>
               		</div></div>

                <div class="form-group">
                <div class="row">
                    <label class="control-label col-sm-2" for="condition">Manufacturer</label>
                    <div class="col-md-6 padding-top-10">
                    <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer" 
                                                                    value="adidas"/>Adidas</label>
                    <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer" 
                                                                    value="nike"/>Nike</label>
                    <label class="checkbox-inline"><form:radiobutton path="productManufacturer" id="manufacturer" 
                                                                    value="puma"/>Puma</label>
                	</div>
                  </div></div>
                  <div class="form-group">
                  <div class="row">
                    <label class="control-label col-sm-2" for="productImage">Upload Picture</label>
                    <div class="col-md-6 padding-top-10">
                    <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
                </div>
                </div></div>
                <br>
                <div class="form-group">
                	<div class="col-sm-offset-2 col-sm-10">
           			<button type="submit" class="btn btn-primary"> Add Item</button>
           			</div>
           		</div>
          		
            </form:form>
            </div>
            </div></div>
            <c:if test="${successmsg=='Product Added Successfully'}">
   			 <h2><c:out value="${successmsg}"></c:out></h2>
   			</c:if> 
            
   
        </div>
           <br>
           <br>
           <br>
           <br>
           <br><br>
		<%@include file="Footer.jsp"%>



</body>
</html>