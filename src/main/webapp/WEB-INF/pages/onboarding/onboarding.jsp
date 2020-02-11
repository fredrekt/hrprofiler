<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Onboarding</title>
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
<body style="background:url(https://netbramha.com/wp-content/uploads/2016/12/senior-front-end-developer-openings-1.gif);background-repeat:no-repeat; background-position: 800px 154px">
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
	
	<!--  Stepper Title Starts -->
	<div class="on-title-container">
	</div>
 
	<!--  Stepper Title Ends -->
	<div class="bs-stepper">
  <div class="bs-stepper-header" role="tablist">
    <!-- your steps here -->
    <div class="step1 active" data-target="#logins-part">
      <button onclick="showStepOne()" type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger">
        <span id="bs-num1" class="bs-stepper-circle">1</span>
        <span class="bs-stepper-label">Training & Orientation</span>
      </button>
    </div>
    <div class="line"></div>
    <div class="step" data-target="#logins-part">
      <button onclick="showStepTwo()" type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger">
        <span class="bs-stepper-circle">2</span>
        <span class="bs-stepper-label">Identification</span>
      </button>
    </div>
    <div class="line"></div>
    <div class="step" data-target="#logins-part">
      <button onclick="showStepThree()" type="button" class="step-trigger" role="tab" aria-controls="logins-part" id="logins-part-trigger">
        <span class="bs-stepper-circle">3</span>
        <span class="bs-stepper-label">Bank Account</span>
      </button>
    </div>
    <div class="line"></div>
    <div class="step" data-target="#information-part">
      <button onclick="show4()" type="button" class="step-trigger" role="tab" aria-controls="information-part" id="information-part-trigger">
        <span class="bs-stepper-circle">4</span>
        <span class="bs-stepper-label">Deployment/Operation</span>
      </button>
    </div>
  </div>
  <div class="bs-stepper-content">
    <!-- your steps content here -->
    <div class="step1-content" id="step1-content">
    	<div class="container">
		    <h3 class="content-header mt-3">
		    Training and Orientation
		    </h3>
		    <p class="content-sub-h mt-3 grey-text">Choose training for the employee</p>
		    <select class="browser-default custom-select">
			  <option selected>Developers Orientation</option>
			  <option value="1">Project Manager Training</option>
			  <option value="2">Data Security Training</option>
			  <option value="3">Company Fresh Hire Orientation</option>
			</select>
			<button onclick="showStepTwo()" class="btn btn-primary btn-sm mt-3">Next</button>
			
	    </div>
    </div>
    <div style="display:none" id="step2-content">
    	<div class="container">
		    <h3 class="content-header mt-3">
		    Company Identification
		    </h3>
		    <p class="content-sub-h mt-3 grey-text">Assign identification card to an employee</p>
		    <div id="container-area" class="container-area">
			    <img src="/img/id.png" width="600" height="350"/>
			    <div class="id-name">Lorem Ipsum Garingo</div>
			    <div class="id-job">Full Stack Developer</div>
			    <div class="id-emp-no">1234-456-789</div>
			    <div class="id-hired">01-09-20</div>
		    </div>
	    </div>
	    <div class="button-com-id">
	    	<button onclick="printID()" class="btn btn-primary btn-sm">Next</button>
	    </div>
    </div>
    <div style="display:none" class="margin-container-2" id="step3-content">
    	<div class="container">
    		<h3 class="content-header mt-3">
		    Financial Assistance
		    </h3>
		    <p class="content-sub-h mt-3 grey-text">
		    Setup bank for the employee or use existing
		    </p>
	    </div>
	    <div class="container">
		<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		  <li class="nav-item">
		    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
		      aria-controls="pills-home" aria-selected="true"><img title="Banco De Oro" src="https://broadstonesolis.com/wp-content/uploads/parser/unauthorized-transactions-on-debit-card-1.png" width="280" height="190"></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab"
		      aria-controls="pills-profile" aria-selected="false"><img title="Paypal" src="https://i.ya-webdesign.com/images/paypal-credit-card-png-4.png" width="280" height="210"></a>
		  </li>
		  <li class="nav-item">
		    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab"
		      aria-controls="pills-contact" aria-selected="false"><img title="Bank of the Philippine Islands" width="290" height="180" src="https://www.bpicards.com/images/p/a524142e-Debit%20EMV%20Cirrus_Red_283x178px.png"></a>
		  </li>
		</ul>
		</div>
		<div class="container">
			<div class="tab-content pt-2 pl-1" id="pills-tabContent">
			  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
				  <div class="container">
				  
				  	<div class="alert alert-warning alert-dismissible fade show animated bounceInUp" role="alert">
					  <strong>You have selected Rizal Commercial Banking Corporation </strong>
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>
					
					  <p>
					  The Rizal Commercial Banking Corporation was established in 1960 as a development bank and is licensed by the Bangko Sentral ng Pilipinas for both commercial and investment banking.
					   It is one of the largest universal banks in the Philippines with total consolidated resources of Php 645 billion as of end-2018
					  </p>
							
					  <div class="row">
					  	<div class="col-md-6">
						  	<div class="md-form">
							  <input type="text" name="cardname" id="form1" class="form-control">
							  <label for="form1">Cardholder's Name</label>
							</div>
						</div>
						
						<div class="col-md-6">
						  	<div class="md-form">
							  <input type="text" name="cardnum" id="form1" class="form-control">
							  <label for="form1">Cardholder's Number</label>
							</div>
						</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<div class="md-form">
								  <input type="text" name="emp-address" id="form1" class="form-control">
								  <label for="form1">Street Address &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Barangay &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Block No. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  Building Number</label>
								</div>
							</div>
						</div>
						
						  <!-- Default unchecked -->
			              <div class="custom-control custom-checkbox mt-3">
			                  <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
			                  <label class="custom-control-label" for="defaultUnchecked">Are you sure the details are correct?</label>
			              </div>
			              <button class="btn btn-primary btn-sm mt-3">Next</button>
						
					</div>
			    </div>
			  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			   <div class="container">
				  
				  	<div class="alert alert-primary alert-dismissible fade show animated bounceInUp" role="alert">
					  <strong> You have selected Paypal!</strong>
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>
					
					<p>
					PayPal Holdings Inc. is an American company operating a worldwide online payments system that supports online money transfers and serves as an electronic alternative to traditional paper methods like checks and money orders.
					</p>
								
					  <div class="row">
					  	<div class="col-md-6">
						  	<div class="md-form">
							  <input type="text" name="cardname" id="form1" class="form-control">
							  <label for="form1">Cardholder's Name</label>
							</div>
						</div>
						
						<div class="col-md-6">
						  	<div class="md-form">
							  <input type="text" name="cardnum" id="form1" class="form-control">
							  <label for="form1">Cardholder's Number</label>
							</div>
						</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<div class="md-form">
								  <input type="text" name="emp-address" id="form1" class="form-control">
								  <label for="form1">Street Address &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Barangay &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Block No. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  Building Number</label>
								</div>
							</div>
						</div>
						
						  <!-- Default unchecked -->
			              <div class="custom-control custom-checkbox mt-3">
			                  <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
			                  <label class="custom-control-label" for="defaultUnchecked">Are you sure the details are correct?</label>
			              </div>
			              <button class="btn btn-primary btn-sm mt-3">Next</button>
						
					</div>
			  </div>
			  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
			   <div class="container">
				  
				  	<div class="alert alert-danger alert-dismissible fade show animated bounceInUp" role="alert">
					  <strong> You have selected Bank of the Philippines Islands! </strong>
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					  </button>
					</div>
					
					 <p>
					Bank of the Philippine Islands is a universal bank in the Philippines. It is the first bank in both the Philippines and Southeast Asia. It is the fourth largest bank in terms of assets, the second largest bank in terms of market capitalization, and one of the most profitable banks in the Philippines.
					</p>
							
					  <div class="row">
					  	<div class="col-md-6">
						  	<div class="md-form">
							  <input type="text" name="cardname" id="form1" class="form-control">
							  <label for="form1">Cardholder's Name</label>
							</div>
						</div>
						
						<div class="col-md-6">
						  	<div class="md-form">
							  <input type="text" name="cardnum" id="form1" class="form-control">
							  <label for="form1">Cardholder's Number</label>
							</div>
						</div>
						</div>
						
						<div class="row">
							<div class="col-md-12">
								<div class="md-form">
								  <input type="text" name="emp-address" id="form1" class="form-control">
								  <label for="form1">Street Address &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; City &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Barangay &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Block No. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;  Building Number</label>
								</div>
							</div>
						</div>
						
						  <!-- Default unchecked -->
			              <div class="custom-control custom-checkbox mt-3">
			                  <input type="checkbox" class="custom-control-input" id="defaultUnchecked">
			                  <label class="custom-control-label" for="defaultUnchecked">Are you sure the details are correct?</label>
			              </div>
			              <button class="btn btn-primary btn-sm mt-3">Next</button>
						
					</div>
			   
			   </div>
			</div> 
			</div>
			  </div>
			</div>
	    </div>
    <div style="display:none" id="stepfour-content">
    	<div class="container">
		    <h3 class="content-header mt-3">
		    Deployment to Operations
		    </h3>
		    <p class="content-sub-h mt-3 grey-text">Time is gold, therefore work hard all the time</p>
		   	<div class="row">
		   		<div class="col">
		    		<img src="/img/laptop-vector.jpg" width="380" height="380">
		    	</div>
		    	<div class="col">
		    		<h5>Congratulations on the employee! The Employee has been assigned to the IT Department! God Bless and have a great day!</h5>
		    		<hr/>
		    		<p class="grey-text">The IT Department specializes in the Tech Field. Mostly IT's purse Application Development or Data Analyst, Networking and many other.</p>
		    		<hr/>
		    		<button onclick="load()" class="btn btn-outline-success btn-lg"><span id="acptbtn">Affirmative</span></button>
		    	</div>
		    </div>
	    </div>
    </div>
    <div id="logins-part" class="content" role="tabpanel" aria-labelledby="logins-part-trigger"></div>
    <div id="information-part" class="content" role="tabpanel" aria-labelledby="information-part-trigger"></div>
  </div>
</div>
		

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
		function show4(){
			document.getElementById("step1-content").style.display = "none";
			document.getElementById("step2-content").style.display = "none";
			document.getElementById("step3-content").style.display = "none";
			document.getElementById("stepfour-content").style.display = "inline";
			}
	</script>

	<!-- Custom Javascript by fred -->
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