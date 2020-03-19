<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Offboarding</title>
<!-- Custom CSS by fred -->
	<link rel="stylesheet" href="http://localhost:8020/css/main.css"/>
	<link rel="stylesheet" href="https://raw.githubusercontent.com/fredrekt/capstone-react/master/src/Styles.css"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
	<!-- Bootstrap core CSS -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
	<!-- Material Design Bootstrap -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/css/mdb.min.css" rel="stylesheet">
	<!-- Bootstrap Stepper -->
	<link href="https://cdn.jsdelivr.net/npm/bs-stepper/dist/css/bs-stepper.min.css" rel="stylesheet">
	
	
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

	   <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Anton|Lexend+Deca|Montserrat:400,700|Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">
    
</head>
<body style="background:url(https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQCeGEOph6CTTEnxAqWEaJfsPaJtKLNanTX3KSIsD9R-KW4ZydQ); background-repeat:no-repeat; background-position: 1200px 140px">

<!-- Nav Starts -->
	<nav class="navbar navbar-dark bg-dark">
	   <a class="navbar-brand" href="/hrprofiler">ALLIANCE</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
		    <div class="navbar-nav">
		      <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
		      <a class="nav-item nav-link" href="#">Features</a>
		      <a class="nav-item nav-link" href="#">Pricing</a>
      	<a class="nav-item nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
    </div>
  </div>
	</nav>
	<!-- Nav Ends -->
	
	<!-- Offboarding Content Starts -->
	<section class="container mt-3 mb-3">
	<div class="off-container">
		<h1 class="on-h1 text-center">Employee Offboarding</h1>
		<p class="grey-text text-center">admin handles employee offboarding</p>
		<div class="container text-center">
			<div class="ui ordered steps">
			  <div id="cmp1" class="active step">
			    <div class="content">
			      <div class="title">Resignation Letter</div>
			      <div class="description">Submit employee resignation letter</div>
			    </div>
			  </div>
			  <div id="cmp2" class="step disabled">
			    <div class="content">
			      <div class="title">Resignation Excuse</div>
			      <div class="description">Employee termination process</div>
			    </div>
			  </div>
			  <div id="cmp3" class="step disabled">
			    <div class="content">
			      <div class="title">Final Pay</div>
			      <div class="description">Income disbursement</div>
			    </div>
			  </div>
			</div>
		</div>
		<form method="POST" action="/submit-offboarding">
		<!-- Stepper Content Starts -->
		<div style="display:inline" id="stepper1">
			<div class="container mt-3">
				<div class="jumbotron jumbotron-fluid">
		          <div class="container">
		            <h2 class="offboard-header">Employee Resignation Process</h2>
		            <p id="txt-letter" class="content-sub-h grey-text">
		            For the employee to write the letter addressing the company to retire
		            </p>
		            <label class="grey-text" for="EmpIdd">Choose an employee to offboard</label>
		           <form action="#" method="POST">
		           <select id="empidd" name="EmpID" class="browser-default custom-select mt-2 mb-3">
					  <option selected>Select an employee to begin offboarding</option>
					 <c:forEach items="${employees }" var="emp">
					  <option value="${emp.getEmpID()}">${emp.getLastName()}, ${emp.getFirstName()}</option>
					 </c:forEach>
					</select>
					
					</form>
		            <div id="letter-area">
			            <div class="form-group">
						  <textarea 
						  style="height:500px;" 
						  class="form-control" 
						  name="letter"
						  id="exampleFormControlTextarea3" 
						  rows="7"></textarea>
						</div>
					</div>
					
					<div style="display:none" id="upload-area">
						<div class="input-group">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
						  </div>
						  <div class="custom-file">
						    <input type="file" class="custom-file-input" id="inputGroupFile01"
						      aria-describedby="inputGroupFileAddon01">
						    <label class="custom-file-label" for="inputGroupFile01">Choose file</label>
						  </div>
						</div>
					</div>
					
					<div hidden class="custom-control custom-switch ml-2 mt-2">
					  <input type="checkbox" class="custom-control-input" id="customSwitches" onclick="showLetterOptions()">
					  <label id="txt-label-letter" class="custom-control-label" for="customSwitches">Already have a letter?</label>
					</div>
	
					<button type="button" onclick="nextStep1()" class="btn btn-md btn-primary">next</button>
					
		          </div>
		        </div>		
	        </div>
        </div>
        <!-- Stepper Content Ends -->
        
        <!-- Stepper Content Starts -->
		<div style="display:none" id="stepper2">
			<div class="container mt-3">
				<div class="jumbotron jumbotron-fluid">
		          <div class="container">
		            <h2 class="offboard-header">Unemployee Processing</h2>
		            <p class="content-sub-h grey-text">
		            This is a one stop process for officially firing the employee
		            </p>
		            
		            <select id="selectBox" class="browser-default custom-select">
					  <option selected>Select reason for leaving</option>
					  <option value="1">Found a better company</option>
					  <option value="2">Not satisfied with the job</option>
					  <option value="3">I can't keep up with this company</option>
					  <option onselect="showReason()" value="4">Please specify reason for leaving</option>
					</select>
					
					<div style="display:none" id="add-reason">
						<div class="md-form form-sm">
						  <input type="text" 
						  id="reasonleave" 
						  class="form-control form-control-sm">
						  <label for="inputSMEx">What's your reason for leaving us?</label>
						</div>
					</div>
					
					<div id="remarks-box">
						<div class="form-group shadow-textarea mt-3 mb-3">
						  <textarea
						   class="form-control z-depth-1" 
						   id="exampleFormControlTextarea6" 
						   rows="3"
						   name="remarks"
						    placeholder="What are your thoughts that you wanted to express?"></textarea>
						</div>
					</div>
					
					<div style="margin-top:2%" class="container">
						<h4 class="offb-sub-header">Exit Interview Schedule</h4>
						<p class="grey-text">
						Select the date for the Employee Exit Interview
						</p>
						
						<div class="form-group">
						    <input class="form-control"
						     type="date" 
						     value="2011-08-19" 
						     name="exitInterview"
						     id="example-date-input1">
						</div>
					</div>
					
					<div style="margin-top:2%" class="container">
						<h4 class="offb-sub-header">Clearance Schedule</h4>
						<p class="grey-text">
						Select the date for the deadline of the clearance
						</p>

						<div class="form-group">
						    <input 
						    class="form-control" 
						    type="date" 
						    value="2011-08-19" 
						    name="clearanceSched"
						    id="example-date-input2">
						</div>
						
					</div>
					
					<button type="button" onclick="nextStep2()" class="btn btn-sm btn-primary">next</button>
					
		          </div>
		        </div>		
	        </div>
        </div>
        <!-- Stepper Content Ends -->
        
        <!-- Stepper Content Starts -->
		<div style="display:none" id="stepper3">
			<div class="container mt-3">
				<div class="jumbotron jumbotron-fluid">
		          <div class="container">
		            <h2 class="offboard-header">Incoming Payday</h2>
		            <p class="content-sub-h grey-text">
		            This is the last payday of the employee will receive
		            </p>
		            
		            <div class="form-group">
						    <input id="example-date-input3"
						    class="form-control" 
						    type="date" 
						    name="finalPay"
						    value="2011-08-19" 
						    id="example-date-input">
						</div>
		     		
		            
		            <button type="submit"
		            id="buttonfinal"
		            class="btn btn-sm btn-success"><span id="acptbtn">All done</span></button>
		          </form>
		          </div>
		        </div>		
		        
		        
	        </div>
        </div>
        <!-- Stepper Content Ends -->
        
        
	</div>
	</section>
	<!-- Offboarding Content Ends -->
	
	
<!-- Footer Starts -->
<footer class="page-footer font-small elegant-color pt-4">

  <!-- Footer Text -->
  <div class="container-fluid text-center text-md-left">

    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-md-6 mt-md-0 mt-3">

        <!-- Content -->
        <h5 class="text-uppercase font-weight-bold">Footer text 1</h5>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Expedita sapiente sint, nulla, nihil
          repudiandae commodi voluptatibus corrupti animi sequi aliquid magnam debitis, maxime quam recusandae
          harum esse fugiat. Itaque, culpa?</p>

      </div>
      <!-- Grid column -->

      <hr class="clearfix w-100 d-md-none pb-3">

      <!-- Grid column -->
      <div class="col-md-6 mb-md-0 mb-3">

        <!-- Content -->
        <h5 class="text-uppercase font-weight-bold">Footer text 2</h5>
        <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Optio deserunt fuga perferendis modi earum
          commodi aperiam temporibus quod nulla nesciunt aliquid debitis ullam omnis quos ipsam, aspernatur id
          excepturi hic.</p>

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
<!-- Footer Ends-->
	
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
  <script>
  $(document).ready(function(){
	  $("#buttonfinal").click(function(){
	    var x = $('#empidd').val();
	    var y = $('#exampleFormControlTextarea3').val();
	   	var z = $('#selectBox').val();
	    //var c = $('#reasonleave').val();
	    var v = $('#exampleFormControlTextarea6').val();
	    var b = $('#example-date-input1').val();
	    var a = $('#example-date-input2').val();
	    var n = $('#example-date-input3').val();
	    var xy = JSON.stringify({empid: x, letter: y, reason:z, remarks: v , exit:b, clearance: a, finalpay: n})
		
		alert(xy)
		    
	  });
	});
  </script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script type="text/javascript" src="/js/main.js"></script>
	<!-- JQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.12.0/js/mdb.min.js"></script>
	<!-- Bootstrap Stepper -->
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bs-stepper/dist/js/bs-stepper.min.js"></script>
</body>

</html>