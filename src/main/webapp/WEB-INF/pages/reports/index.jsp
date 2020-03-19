<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!DOCTYPE HTML>
<html>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<head>
<title>HR Reports</title>
</head>
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
    	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="http://localhost:8020/css/sidebar.css">
		
		   <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Anton|Lexend+Deca|Montserrat:400,700|Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald&display=swap" rel="stylesheet">
		
		<body>
			
		<div class="wrapper d-flex align-items-stretch">
			<nav style="margin-bottom:-10%" id="sidebar">
	  		<h1><a href="/hrprofiler" class="logo">HR Profiler</a></h1>
        <ul class="list-unstyled components mb-5">
          <li class="active">
            <a href="/reports"><span class="fa fa-home mr-3"></span> Recruiting Report</a>
          </li>
          <li>
              <a href="/reports/demographics"><span class="fa fa-user mr-3"></span> Emp Demographics</a>
          </li>
          <li>
            <a href="/reports/hr-efficiency"><span class="fa fa-sticky-note mr-3"></span> HR Efficieny</a>
          </li>
          <li>
            <a href="/reports/labor-relations"><span class="fa fa-paper-plane mr-3"></span> Labor Relations</a>
          </li>
        </ul>

    	</nav>

        <!-- Page Content  -->
      <div style="" id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">Recruiting Reports</h2>
        <p class="grey-text">Please enter dates to filter new hires</p>
        <form action="/reports/generate" method="post">
        	<div class="row">
	        	<div class="col-md-6">
			      	<select name="date" style="width:150%" class="browser-default custom-select">
					  <option selected>Select year</option>
					  <option value="2020">2020</option>
					  <option value="2019">2019</option>
					  <option value="2018">2018</option>
					  <option value="2017">2017</option>
					  <option value="2016">2016</option>
					  <option value="2015">2015</option>
					  <option value="2014">2014</option>
					  <option value="2013">2013</option>
					  <option value="2012">2012</option>
					  <option value="2011">2011</option>
					  <option value="2010">2010</option>
					  <option value="2009">2009</option>
					  <option value="2008">2008</option>
					  <option value="2007">2007</option>
					</select>
					</div>	
			</div>
			<div>
				<button class="btn btn-sm btn-success" type="submit">
					Update Graph
				</button>
			</div>							
        </form>
      
		
      </div>
      <section id="sec3">
      <div style="display:none" id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">HR Efficiency</h2>
        <p class="grey-text">Below is the ratio of staff per individual human resource personel</p>
        <form action="" method="">
        	<img src="https://www.slideteam.net/media/catalog/product/cache/960x720/h/r/hr_dashboard_headcount_by_departments_male_and_female_Slide01.jpg"/>
			<div style="margin-top:-20%;margin-left:40%">
				<div class="container">
					<canvas id="myChart" style="max-width: 500px;"></canvas>	
				</div>
			</div>
			<div>
				<button class="btn btn-sm btn-primary">
					export graph
				</button> 
			</div>	
						
        </form>
      
		
      </div>
      </section>
      <div style="display:none" id="content" class="p-4 p-md-5 pt-5">
        <h2 class="mb-4">Labor Relations</h2>
        <p class="grey-text">Below measures the average number of hours needed to settle different concerns</p>
        <form action="" method="">
			<div>
				<img src="https://community.atlassian.com/t5/image/serverpage/image-id/13626iE3437BD8810829C5/image-size/large?v=1.0&px=999"/>
			</div>
			<div style="margin-top:-20%;margin-left:40%">
				<div class="container">
					<canvas id="myChart" style="max-width: 500px;"></canvas>	
				</div>
			</div>
			<div>
				<button class="btn btn-sm btn-primary">
					export graph
				</button>
			</div>
			<div>
			
			</div>	
						
        </form>
      
		
      </div>
         <!-- Page Content  -->
         <section style="margin-right:33%" id="sec2">
      <div style="margin-left:-58%" id="content" class="p-4 p-md-5 pt-5">
        <h2 style="margin-top:75%;" class="mb-4">Recruitment Report</h2>
        <p class="grey-text">Below are the generated reports for the newly hired employees</p>
        <form action="" method="">
        <h4 class="">
        	Generated report for the hr admin 
        </h4>
        <p class="grey-text">
        	Below is the report that you wished to filter or view
        </p>
        	<table style="padding:25px" class="table table-hover">
			  <thead>
			    <tr>
			      <th scope="col">ERF #</th>
			      <th scope="col">Employee ID</th>
			      <th scope="col">Date Job Offered</th>
			      <th scope="col">Date of Onboarding</th>
			    </tr>
			  </thead>
			  <tbody>
			  
			      <c:forEach items="${employee}" var="emp">
			    <tr>
			      <th scope="row">${emp.getERF()}</th>
			      <td>${emp.getEmpID()}</td>
			      <td>${emp.getDateJobOffered()}</td>
			      <td>${emp.getDateOnboarding()}</td>
-			    </tr>
				</c:forEach>
				
			  </tbody>
			</table>
			<button class="btn btn-sm btn-info">
				export table
			</button>
			
			
			
			
			
			<h4 class="mt-3">
        	Report for all recruited employees
        </h4>
        	<table class="table table-hover">
			  <thead>
			    <tr>
				  <th scope="col">ERF #</th>
			      <th scope="col">Employee ID</th>
			      <th scope="col">Date Job Offered</th>
			      <th scope="col">Date of Onboarding</th>
			    </tr>
			  </thead>
			  <tbody>
			       <c:forEach items="${recruit}" var="emp">
			    <tr>
			      <th scope="row">${emp.getERF()}</th>
			      <td>${emp.getEmpID()}</td>
			      <td>${emp.getDateJobOffered()}</td>
			      <td>${emp.getDateOnboarding()}</td>
-			    </tr>
				</c:forEach>
			  </tbody>
			</table>
			<button class="btn btn-sm btn-info">
				export table
			</button>
			<div style="margin-top:-20%;margin-left:40%">
				<div class="container">
					
				</div>
			</div>
			<div>
				
			</div>	
						
        </form>
     
      </div>
      </section>
      <div style="display:none" id="content2">
		  <h2 class="mb-4">Recruiting Reports</h2>
        <p class="grey-text">Please enter dates and hires below</p>
        <form action="" method="">
        	<div class="row">
	        	<div class="col-md-6">
			       	<div class="form-group">
						<label for="dateExample">Starting Date</label>
						    <input style="width:30%; border:1px solid grey" 
						    class="form-control" 
						    name="dateJobOffered" 
						    type="date" 
						    placeholder="mm/dd/yy"
							 />
							 <br/>
							 <div class="form-group">
								<label for="dateExample">Ending Date</label>
								    <input style="width:30%; border:1px solid grey" 
								    class="form-control" 
								    name="dateJobOffered" 
								    type="date" 
								    placeholder="mm/dd/yy"
									 />
								</div>	
						</div>	
					</div>	
			</div>
			<div style="margin-top:-20%;margin-left:40%">
				<div class="container">
					<canvas id="myChart" style="max-width: 500px;"></canvas>	
				</div>
			</div>
			<div>
				<button class="btn btn-sm btn-success" type="submit">
					Update Graph
				</button>
			</div>	
						
        </form>
		</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
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