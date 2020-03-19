<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<title>Employee Onboarding</title>
<head>
	<!-- Font Awesome -->
<link rel="stylesheet" href="C:\Users\Acer\Desktop\Project Development\SpringBoot\src\main\resources\static\css">
<link rel="stylesheet" href="./main.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Google Fonts -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
<!-- Bootstrap core CSS -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/css/mdb.min.css" rel="stylesheet">

<!--  MDB CDN STARTS -->

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
  <!-- Google Fonts Roboto -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="http://localhost:8020/css/bootstrap.min.css">
  <!-- Material Design Bootstrap -->
  <link rel="stylesheet" href="http://localhost:8020/css/mdb.min.css">
  <!-- Your custom styles (optional) -->
  <link rel="stylesheet" href="http://localhost:8020/css/style.css">
  
<!-- MDB CDN ENDS -->

</head>
<body>	
	
	<nav class="navbar navbar-dark elegant-color justify-content-between">
	  <a class="navbar-brand" href="/hrprofiler">ALLIANCE</a>
	  <form class="form-inline my-1">
	    <div class="md-form form-sm my-0">
	      <input class="form-control form-control-sm mr-sm-2 mb-0" type="text" placeholder="Search"
	        aria-label="Search">
	    </div>
	    <button class="btn btn-outline-white btn-sm my-0" type="submit">Search</button>
	  </form>
	</nav>
	<!--  MDB Navbar Ends -->
	
	<div class="container mt-4">
			<div class="jumbotron card card-image" style="background-image: url(https://mdbootstrap.com/img/Photos/Others/gradient1.jpg);">
			  <div class="text-white text-center py-5 px-4">
			    <div>
			      <h2 class="card-title h1-responsive pt-3 mb-5 font-bold animated slideInLeft slow infinite"><strong>EMPLOYEE ONBOARDING</strong></h2>
			      <p class="mx-5 mb-5">
			      		Welcome admin, this is where you onboard employees for your company. This feature is made by Fred Garingo, tap on Get Started to do your job.
			      </p>
					<a type="button" href="/onboarding" class="btn btn-outline-white">Get Started</a>
			    </div>
			  </div>
			</div>
	</div>
	
	<!--  HELPING HAND APP CONTENT STARTS -->
	
  <div class="container my-5 py-5 z-depth-1">
  <!--Section: Content-->
  <section class="dark-grey-text text-center">
    
    <h1 class="karen">HELPING HAND TOOL</h1>

    <div class="row mx-3">
      <div class="col-md-4 px-4 mb-4">

        <div class="view">
          <img src="https://mdbootstrap.com/img/illustrations/drawkit-drawing-man-colour.svg" class="img-fluid" alt="smaple image">
        </div>
        <p>
        Praesent in hendrerit felis
        </p>

      </div>
     <div class="col-md-4 px-4 mb-4">

        <div class="view">
          <img src="https://mdbootstrap.com/img/illustrations/drawkit-phone-conversation-colour.svg" class="img-fluid" alt="smaple image">
        </div>
        <p>
        Lorem ipsum dolor sit amet vestibulum
        </p>

      </div>
      <div class="col-md-4 px-4 mb-4">

        <div class="view">
          <img src="https://mdbootstrap.com/img/illustrations/app-user-colour.svg" class="img-fluid" alt="smaple image">
        </div>
        <p>
        Morbi elementum justo 
        </p>

      </div>
    </div>

  </section>
  <!--Section: Content-->
</div>

<!--  HELPING HAND TOOL CONTENT ENDS -->
	
	
		<!--  EMPLOYEE INFORMATION CHANGE STARTS -->
		<div class="container">
			<div class="jumbotron">
			  <h2 class="display-4 text-center animated bounce infinite" style="font-weight:500;font-size:50px">EMPLOYEE INFORMATION CHANGE</h2>
			  <p class="lead text-center">This means that not every information that is submitted is permanent. Everything can be replaced even you <span>&#128521;</span></p>
			  <hr class="my-4">
			  <p class="text-center">This feature helps the employee updates his/her information on the companys employee records.</p>
			  <div class="text-center">
			  	<a class="btn btn-primary btn-lg" href="/employee/update-information" role="button">Update information</a>
			  </div>
			</div>
		</div>
		<!-- EMPLOYEE INFORMATION CHANGE ENDS -->

	
		<!--  EMPLOYEE INFORMATION CHANGE CONTENT STARTS -->
		<div class="container my-5">

		  <!-- Section -->
		  <section>
		
		    <h6 class="font-weight-bold text-center grey-text text-uppercase small mb-4">Services</h6>
		    <h3 class="font-weight-bold text-center dark-grey-text pb-2">Employee Information Change Services</h3>
		    <hr class="w-header my-4">
		    <p class="lead text-center text-muted pt-2 mb-5">
		    
		    </p>
		
		    <div class="row">
		
		      <div class="col-md-6 col-xl-3 mb-4">
		        <div class="card text-center bg-success text-white waves-effect">
		          <div class="card-body">
		            <p class="mt-4 pt-2"><i class="far fa-object-ungroup fa-4x"></i></p>
		            <h5 class="font-weight-normal my-4 py-2"><a class="text-white" href="#">Web Design</a></h5>
		            <p class="mb-4">Designed by Fredrick Garingo, used Material Bootstrap for the web design.</p>
		          </div>
		        </div>
		      </div>
		
		      <div class="col-md-6 col-xl-3 mb-4">
		        <div class="card text-center waves-effect">
		          <div class="card-body">
		            <p class="mt-4 pt-2"><i class="fas fa-mobile-alt fa-4x grey-text"></i></p>
		            <h5 class="font-weight-normal my-4 py-2"><a class="dark-grey-text" href="#">Mobile Responsive</a></h5>
		            <p class="text-muted mb-4">This application is made to be mobile responsive for admin's on phone.</p>
		          </div>
		        </div>
		      </div>
		
		      <div class="col-md-6 col-xl-3 mb-4">
		        <div class="card text-center deep-purple lighten-1 text-white waves-effect">
		          <div class="card-body">
		            <p class="mt-4 pt-2"><i class="fas fa-chart-line fa-4x"></i></p>
		            <h5 class="font-weight-normal my-4 py-2"><a class="text-white" href="#">Digital Marketing</a></h5>
		            <p class="mb-4">Not only made for a single company but for many companies.</p>
		          </div>
		        </div>
		      </div>
		
		      <div class="col-md-6 col-xl-3">
		        <div class="card text-center waves-effect">
		          <div class="card-body">
		            <p class="mt-4 pt-2"><i class="far fa-4x fa-thumbs-up"></i></p>
		            <h5 class="font-weight-normal my-4 py-2"><a class="dark-grey-text" href="#">Easy to use</a></h5>
		            <p class="text-muted mb-4">
		            Application is designed to be easy to use, everything is not hard to understand.
		            </p>
		          </div>
		        </div>
		      </div>
		
		    </div>
		
		  </section>
		  <!-- Section -->
		
		</div>
		
		<!--  EMPLOYEE INFORMATION CHANGE ENDS -->



<!-- EMPLOYEE OFFBOARDING STARTS -->
	<!-- Jumbotron -->
	<div class="container">
		<div class="card card-image" style="background-image: url(https://www.oodlesthemes.com/wp-content/uploads/2017/10/590x300-OO0122316-Red-abstract-background-design-vector.jpg);">
		  <div class="text-white text-center rgba-white-slight py-5 px-4">
		    <div class="py-5">
		
		      <!-- Content -->
		      <h2 class="card-title h2 my-4 py-2 animated shake slow infinite">EMPLOYEE OFFBOARDING</h2>
		      <p class="mb-4 pb-2 px-md-5 mx-md-5">Where the admin submits a request to offboard an employee, basically means to get the employee ready for discharge or out of work or to be fired from the company.</p>
		      <a href="/employee/offboarding" style="color:white;" class="btn btn-outline-white waves-effect"><i class="fas fa-clone left"></i> FIRE EMPLOYEES</a>
		
		    </div>
		  </div>
		</div>
		</div>
		
	
		
		
		
<!-- Jumbotron -->
<!-- EMPLOYEE OFFBOARDING ENDS -->

<!--  OFFBOARDING CONTENT STARTS -->
<div class="container my-5 z-depth-1">


  <!--Section: Content-->
  <section class="dark-grey-text">

    <div class="row pr-lg-5">
      <div class="col-md-7 mb-4">

        <div class="view">
          <img src="https://mdbootstrap.com/img/illustrations/graphics(4).png" class="img-fluid" alt="smaple image">
        </div>

      </div>
      <div class="col-md-5 d-flex align-items-center">
        <div>
          
          <h3 class="font-weight-bold mb-4">EMPLOYEE OFFBOARDING</h3>

        	<p>
        	Offboarding is the reverse of onboarding, and it involves separating an employee from a firm. This can include a process for sharing knowledge with other employees. ... Offboarding software is also part of a talent management system. Employee onboarding and offboarding have many similarities.
        	</p>
			
			<!--  
        	<button type="button" class="btn btn-orange btn-rounded mx-0">Download</button>
			 -->
        </div>
      </div>
    </div>

  </section>
  <!--Section: Content-->


</div>
<!--  OFFBOARDING CONTENT ENDS -->


<!-- Footer -->
<footer class="page-footer font-small elegant-color pt-4">

  <!-- Footer Text -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase font-weight-bold">Front-end made by</h5>
        <p>
        	<a style="font-weight:800" href="https://github.com/fredrekt?tab=repositories">Fred Garingo</a>
        	 , developer of the front-end and my features; Employee Onboarding - Training & Orientation, Company Identification, Bank Account and 
        	 lastly Deployment to Operation.
        </p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-6 mb-md-0 mb-3">

        <!-- Content -->
        <h5 class="text-uppercase font-weight-bold">Material Design Bootstrap</h5>
        <p>
        Used material design for bootstrap, and of course custom made classes and functions for the frontend made by Me, <a href="https://www.facebook.com/fredgaringo">Fred Garingo</a>
        </p>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Text -->

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3"><a href="https://mdbootstrap.com/education/bootstrap/"> Alliance </a> Copyright 2020 ©  
    
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
		

 <!-- jQuery -->
 
 <!-- 
	Developer Details: 
	Name: Fredrick Garingo
	Quote: ReactJS is better <3 
  -->
   <!-- MDB - localhost -->
  <script type="text/javascript" src="http://localhost:8020/js/jquery.min.js"></script>
  <!-- Bootstrap tooltips -->
  <script type="text/javascript" src="http://localhost:8020/js/popper.min.js"></script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="http://localhost:8020/js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <script type="text/javascript" src="http://localhost:8020/js/mdb.min.js"></script>
  <!-- Your custom scripts (optional) -->
  <script type="text/javascript"></script>

  <!-- End MDB localhost -->
 
 
<!-- JQuery -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/js/mdb.min.js"></script>
  </body>
  </html>