    <style>
    .carousel-inner > .item > img 
    {
    margin: 0 auto;
	}
    </style>
    

<div class="navbar navbar-dark bg-primary" role="navigation">
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
  				<ul class="nav navbar-nav navbar-right">
  					<li class="active"><a href="index"style="color:white">Home</a></li>
  					<li><a href="AboutUs"style="color:white"><span class="glyphicon glyphicon-info-sign">AboutUs</span></a></li>
  					<li><a href="Register"style="color:white"><span class="glyphicon glyphicon-pencil">Register</span></a></li>
  					<li><a href="Login"style="color:white"><span class="glyphicon glyphicon-user">Login</span></a></li>
  					<li><a href="AddProduct" style="color:white">AddProduct</a></li>
  				</ul>
  			</div>		
  		</div>
  	</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  		<!-- Indicators -->
    	<ol class="carousel-indicators">
      		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      		<li data-target="#myCarousel" data-slide-to="1"></li>
      		<li data-target="#myCarousel" data-slide-to="2"></li>
      		<li data-target="#myCarousel" data-slide-to="3"></li>
    	</ol>
    	<!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="/resources/img/Chelsea.jpg"/>" alt="Chelsea">
        <div class="carousel-caption">
        	<h1>Chelsea</h1>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/img/ManUtd.jpg"/>" alt="ManUtd">
        <div class="carousel-caption">
        	<h1>Manchester United</h1>
        </div>
      </div>
    
      <div class="item">
        <img src="<c:url value="/resources/img/Bayern.jpg"/>" alt="Bayern">
        <div class="carousel-caption">
        	<h1>Bayern Munich</h1>
        </div>
      </div>

      <div class="item">
        <img src="<c:url value="/resources/img/RealMadrid.jpg"/>" alt="Madrid">
        <div class="carousel-caption">
        	<h1>Real Madrid</h1>
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
