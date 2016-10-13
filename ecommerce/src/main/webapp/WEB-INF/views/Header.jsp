<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <style>
    .carousel-inner > .item > img 
    {
    margin: 0 auto;
    height:300px;
	}
    </style>

<sec:authentication var="principal" property="principal" />


<c:if test="${principal=='anonymousUser'}">

<div class="navbar navbar-inverse" style="margin-bottom:0px;" role="navigation">
  		<div class="conatiner">
  			<div class="navbar-header">
  				<button type="button" class="navbar-toggle" data-toggle="collapse" 
  				data-target=".navbar-collapse">
  				<span class="sr-only"> Toggle Navigation</span>
  				<span class="icon-bar"style="background-color:white"></span>
  				<span class="icon-bar"style="background-color:white"></span>
  				<span class="icon-bar"style="background-color:white"></span>
  				</button>
  			<a class="navbar-brand" href="index" style="color:white"><span class="glyphicon glyphicon-flash"><strong>JerseyStore</strong></span></a>
  			 
  			</div>
  			<div class="navbar-collapse collapse">
  				<ul class="nav navbar-nav">
  				<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"style="color:white"> Shop By Catergory <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li class="dropdown-header"><b>Jerseys</b></li>
          <li class="divider"></li>
            <li><a href="Englishleague">English League</a></li>
            <li><a href="Spanishleague">Spanish League</a></li>
            <li><a href="Germanleague">German League</a></li>
            </ul>
            </li>
            </ul>
            	
            	<ul class="nav navbar-nav navbar-right">
  					<li class="active"><a href="index"style="color:white">Home</a></li>
  					<li><a href="AboutUs"style="color:white"><span class="glyphicon glyphicon-info-sign">AboutUs</span></a></li>
  					<li><a href="Register"style="color:white"><span class="glyphicon glyphicon-pencil">Register</span></a></li>
  					<li><a href="Login"style="color:white"><span class="glyphicon glyphicon-user">Login</span></a></li>	
  				</ul>
  			</div>		
  		</div>
  	</div>
  	
  	
  	</c:if>





<c:if test="${principal!='anonymousUser'}">

<div class="navbar navbar-inverse" style="margin-bottom:0px;" role="navigation">
  		<div class="conatiner">
  			<div class="navbar-header">
  				<button type="button" class="navbar-toggle" data-toggle="collapse" 
  				data-target=".navbar-collapse">
  				<span class="sr-only"> Toggle Navigation</span>
  				<span class="icon-bar"style="background-color:white"></span>
  				<span class="icon-bar"style="background-color:white"></span>
  				<span class="icon-bar"style="background-color:white"></span>
  				</button>
  			<a class="navbar-brand" href="index" style="color:white"><span class="glyphicon glyphicon-flash"><strong>JerseyStore</strong></span></a>
  			 
  			</div>
  			<div class="navbar-collapse collapse">
  				<ul class="nav navbar-nav">
  				<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"style="color:white"> Shop By Catergory <span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li class="dropdown-header"><b>Jerseys</b></li>
          <li class="divider"></li>
            <li><a href="Englishleague">English League</a></li>
            <li><a href="Spanishleague">Spanish League</a></li>
            <li><a href="Germanleague">German League</a></li>
            </ul>
            </li>
            </ul>
            	
            	<ul class="nav navbar-nav navbar-right">
  					<li class="active"><a href="index"style="color:white">Home</a></li>
  					<li><a href="#" style="color:white">Welcome:${principal.username}</a></li>
  					<li><a href="AboutUs"style="color:white"><span class="glyphicon glyphicon-info-sign">AboutUs</span></a></li>
  					<li><a href="Productlist" style="color:white">Product List</a></li>
  					<li><a href="AddProduct" style="color:white">AddProduct</a></li>
  					<li><a href="<c:url value="j_spring_security_logout" />" style="color:white"><span class="glyphicon glyphicon-log-out">Logout</span></a></li>
  					
  				</ul>
  			</div>		
  		</div>
  	</div>
  	
  	
  	</c:if>
  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  		<!-- Indicators -->
    	<ol class="carousel-indicators">
      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      		<li data-target="#myCarousel" data-slide-to="1"></li>
      		<li data-target="#myCarousel" data-slide-to="2"></li>
    	</ol>
    	<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/resources/img/premierleague.jpg"/>" alt="Chelsea"  width="100%">
        <div class="carousel-caption">
        	<h1>English Premier League</h1>
        	<p>EXCITING OFFERS! Grab hold of your Favoutite English Club Jersey</p>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/img/ligabbva.jpg"/>" alt="ManUtd"  width="100%">
        <div class="carousel-caption">
        	<h1>Spanish League</h1>
        	<p>EXCITING OFFERS! Grab hold of your Favoutite Spanish Club Jersey</p>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/img/bundesliga.jpeg"/>" alt="Bayern"  width="100%">
        <div class="carousel-caption">
        	<h1>BUNDESLIGA</h1>
        	<p>EXCITING OFFERS! Grab hold of your Favoutite German Club Jersey</p>
        </div>
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div><br><br>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
