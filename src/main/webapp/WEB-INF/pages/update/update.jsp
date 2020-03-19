<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Update</title>

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
<body style="background:url(https://lh3.googleusercontent.com/proxy/0Y8_XWEm8KbSq2i_jlf-LIEqpLZ-Cox7OKNfBrhdBaMflBQV4wGxTnI0q4G0GyLKYJ69ZfH4rDqA3xy9YpEA3W51HmtMnzdg1cRDmYEB-wILXcLCUKIJPUSbPal7ahDr2zbMfzS7Suiud0VTRDTfX4oxowABFVEdRzQ); background-position: 1200px 100px; background-repeat: no-repeat">

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
	
	
	
	
	<div class="update-container">
		<div>
			<h1 class="on-h1">Employee Information Change</h1>
			<p class="sub-txt-h">admin handles employee information updates</p>
		</div>
	</div>
	
	
	<div class="container">
		<div class="jumbotron">
		  <h2 class="display-4 text-center">COMPANY EMPLOYEES</h2>
		  <p class="grey-text text-center">
		  	This is where the admin selects the employee/s that needs their information to be updated for the company.
		  </p>
		  <div class="text-center">
		  	  <form action="/employee/edit" method="GET">
			  <hr class="my-4">
			  <p>Below me, you select carefully who you want to update an employee's information</p>
			  <div class="row">
				  <div class="col-md-12">
				  
				  	<select name="EmpID" style="width:500px" class="browser-default custom-select">
					  <option selected>Select company employees</option>
					  <c:forEach items="${employees}" var="emp">
					  <option value="${emp.getEmpID()}">${emp.getLastName()}, ${emp.getFirstName()}</option>
					 </c:forEach>
					 </select>
					
				  </div>
			  </div>
			  
			  <button type="submit" class="btn btn-primary btn-lg mt-3">Get Updating</button>
		  </form>
		  </div>
		</div>
	</div>
	
	
	
	<div class="container">
			
			
			<c:choose>
				<c:when test="${employee!=null }">
					<form method="post" action="/employee/update">
				</c:when>
				<c:otherwise>
					<form method="post" action="/employee">
				</c:otherwise>
			</c:choose>
				<table class="table table-striped">
				<tbody>
					<tr>
						<div align="center">
						<h2 style="text-transform:uppercase;font-weight:400" class="">Edit Employee</h2>
						<hr style="width:30%"/>
						<p class="grey-text text-center">
						Go ahead and update an employee's information
						</p>
					</tr>
					</tbody>
					</table>
					
					<table class="table table-striped">
					<tbody>
					<tr>
						<th style="color:Tomato">Company Details</th>
					</tr>
					</tbody>
					</table>
					
					<table class="table table-striped">
					<tbody>
					<tr>
						
						<form class="well form-horizontal">
                      	<fieldset>
                      	
                        <div class="form-group">
						<label class="col-md-4 control-label">Project Name:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-file"></i></span><input placeholder="Project" type="text" name="Project" class="form-control" required="true" value="${employee.getProject() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Team:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-tasks"></i></span><input placeholder="Team" type="text" name="Team" class="form-control" required="true" value="${employee.getTeam() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">HR:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input placeholder="HR" type="text" name="HR" class="form-control" required="true" value="${employee.getHR() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Salary Package:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
						<input placeholder="Input Salary" type="text" name="salaryPackage" class="form-control" required="true" value="${employee.getSalaryPackage() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Employee Category:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select name="empCategory" class="form-control selectpicker">
						<option value="">Select Employee Category</option>
						<option>New Fresh Graduate</option>
						<option>Old Employee</option>
						<option>Returnee</option>
						</select></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Workstation:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select name="workstation" class="form-control selectpicker">
						<option value="">Select Workstation</option>
						<option>Desktop Mac</option>
						<option>Desktop Dev</option>
						<option>Desktop Samsung</option>
						</select></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Designation:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select name="Designation" class="form-control selectpicker">
						<option value="">Select Designation</option>
						<option>IT Specialist</option>
						<option>Database Administrator</option>
						<option>Software Engineer</option>	
						<option>Web Developer</option>	
						<option>Mobile Developer</option>
						</select></div>
						</div>
						</div>
					
						<div class="form-group">
						<label class="col-md-4 control-label">Level:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select name="Level" class="form-control selectpicker">
						<option value="">Select Level</option>
						<option>Senior Developer</option>
						<option>Executive Manager</option>
						<option>Junior Developer</option>
						<option>Technical Staff</option>
						<option>Practicum/Trainee</option>
						</select></div>
					 	</div>
						</div>
					
						<div class="form-group">
						<label class="col-md-4 control-label">Business Unit:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select name="BusinessUnit" class="form-control selectpicker">
						<option value="">Select Business Unit</option>
						<option>Alliance End-to-End Solutions(AEES)</option>
						<option>Alliance Software Japan(ASJ)</option>
						<option>Business Support Group(BSG)</option>
						<option>Japan Originated Companies(JOC)</option>
						<option>Rest of the World(ROW)</option>
						</select></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Date Issued:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						<input type="date" name="date" class="form-control selectpicker" value="${employee.getDate() }"></div>
						</div>
						</div>
						
						</tr>
						</tbody>
						</table>
				
					<table class="table table-striped">
						<tbody>
							<tr>
								<th style="color:Tomato">Personal Details</th>
							</tr>
						</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
					<tr>
					   	<div class="form-group">
						<label class="col-md-4 control-label">FullName:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input placeholder="Last Name" type="text" name="lastName" class="form-control" required="true" value="${employee.getLastName() }"> 
						<input placeholder="Middle Name" type="text" name="middleName" class="form-control" required="true" value="${employee.getMiddleName() }">
						<input placeholder="First Name" type="text" name="firstName" class="form-control" required="true" value="${employee.getFirstName() }"></div>
					</div>
					</div>
				
					<div class="form-group">
						<label class="col-md-4 control-label">Date of Birth:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						<input type="date" name="dateOfBirth" class="form-control selectpicker" value="${employee.getDateOfBirth() }"></div>
						</div>
						</div>
						
					<div class="form-group">
						<label class="col-md-4 control-label">Gender:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<select name="Gender" class="form-control selectpicker">
						<option value="">Select Gender</option>
						<option>Male</option>
						<option>Female</option>
					</select></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">Address:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
						<input placeholder="Address" type="text" name="address" class="form-control" required="true" value="${employee.getAddress() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Telephone Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-phone-alt"></i></span>
						<input placeholder="Telephone Number" type="text" name="telNumber" class="form-control" required="true" value="${employee.getTelNumber() }"></div>
						</div>
						</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">Mobile Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
						<input placeholder="Mobile Number" type="text" name="mobNumber" class="form-control" required="true" value="${employee.getMobNumber() }"></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">SSS Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						<input placeholder="SSS Number" type="text" name="sssNumber" class="form-control" required="true" value="${employee.getSssNumber() }"></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">BIR Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						<input placeholder="BIR Number" type="text" name="birNumber" class="form-control" required="true" value="${employee.getBirNumber() }"></div>
					</div>
					</div>
					
					
					<div class="form-group">
						<label class="col-md-4 control-label">TIN Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						<input placeholder="BIR Number" type="text" name="tinNumber" class="form-control" required="true" value="${employee.getTinNumber() }"></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">PhilHealth Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
						<input placeholder="PhilHealth Number" type="text" name="philHNumber" class="form-control" required="true" value="${employee.getPhilHNumber() }"></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">HDMF Number:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-asterisk"></i></span>
						<input placeholder="HDMF Number" type="text" name="hdmfNumber" class="form-control" required="true" value="${employee.getHdmfNumber() }"></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">Status:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
						<select name="Status" class="form-control selectpicker">
						<option value="">Select Status</option>
						<option>Single</option>
						<option>In-relationship</option>
						<option>Complicated</option>	
						<option>Widowed</option>	
						<option>Married</option>
						</select></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Dependent:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
						<input placeholder="Last Name" type="text" name="dependentLastName" class="form-control" required="true" value="${employee.getDependentLastName() }"> 
						<input placeholder="First Name" type="text" name="dependentFirstName" class="form-control" required="true" value="${employee.getDependentFirstName() }">
						<input placeholder="Age" type="text" name="age" class="form-control" required="true" value="${employee.getAge() }"></div>
					</div>
					</div>
					
					</tr>
					</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
							<tr>
								<th style="color:Tomato">Educational Background</th>
							</tr>
						</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
					<tr>
					<div class="form-group">
						<label class="col-md-4 control-label">Primary:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
						<input placeholder="School Name" type="text" name="edBackground" class="form-control" required="true" value="${employee.getEdBackground() }">
						<input placeholder="Year Started" type="text" name="Year" value="${employee.getYear() }">
						<input placeholder="Year Ended" type="text" name="Year2" value="${employee.getYear2() }"></div>	
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">Secondary:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
						<input placeholder="School Name" type="text" name="Secondary" class="form-control" required="true" value="${employee.getSecondary() }">
						<input placeholder="Year Started" type="text" name="yearSec" value="${employee.getYearSec() }">
						<input placeholder="Year Ended" type="text" name="yearSec2" value="${employee.getYearSec2() }"></div>
					</div>
					</div>
					
					<div class="form-group">
						<label class="col-md-4 control-label">College:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
						<input placeholder="School Name" type="text" name="College" class="form-control" required="true" value="${employee.getCollege() }">
						<input placeholder="Year Started" type="text" name="CollegeYear" value="${employee.getCollegeYear() }">
						<input placeholder="Year Ended" type="text" name="CollegeYear2" value="${employee.getCollegeYear2() }"></div>
					</div>
					</div>
					</tr>
					</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
							<tr>
								<th style="color:Tomato">Beneficial Form</th>
							</tr>
						</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
						<tr>
							<div class="form-group">
	  				<label class="col-md-4 control-label" for="benefits_id">Benefits</label>  
	  				<div class="col-md-5">
  				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-plus"></i></span>
  				<input id="benefits_id" name="benefits" type="text" placeholder="Benefits" class="form-control input-md">
  				</div>
				</div>
				</div>
				
				
				<div class="form-group">
  				<label class="col-md-4 control-label" for="incentive_id">Incentive</label>  
  				<div class="col-md-5">
  				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
  				<input id="incentive_id" name="incentive" type="text" placeholder="Incentive" class="form-control input-md">
				</div>
  				</div>
				</div>
				
				
				<div class="form-group">
  				<label class="col-md-4 control-label" for="amount_id">Amount</label>  
  				<div class="col-md-5">
  				<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
  				<input id="amount_id" name="amount" type="text" placeholder="Amount" class="form-control input-md">
				</div>
				</div>
				</div>
					</tr>
					</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
							<tr>
								<th style="color:Tomato">Disciplinary Issue Tracker</th>
							</tr>
						</tbody>
					</table>
					
					<table class="table table-striped">
						<tbody>
						<tr>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Date Filed:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						<input type="date" name="dateFiled" class="form-control selectpicker" value="${employee.getDateFiled() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Date Resolved:</label>
						<div class="col-md-5 selectContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
						<input type="date" name="dateResolved" class="form-control selectpicker" value="${employee.getDateResolved() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Violation:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-warning-sign"></i></span>
						<input placeholder="Violation" type="text" name="violation" class="form-control" required="true" value="${employee.getViolation() }"></div>
						</div>
						</div>
						
						<div class="form-group">
						<label class="col-md-4 control-label">Disciplinary Action:</label>
						<div class="col-md-5 inputGroupContainer">
						<div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
						<input placeholder="Disciplinary Action Taken" type="text" name="disciplinaryAction" class="form-control" required="true" value="${employee.getDisciplinaryAction() }"></div>
					</div>
					</div>
					</tr>
					</tbody>
					</table>
					
					<tr>
						<input type="hidden" value="${EmpID }" name="EmpID"/>
						<td>
							<c:choose>
								<c:when test="${employee!=null }">
								<div class="form-group">
  								<label class="col-md-0 control-label"></label>
  								<div class="col-md-4"><br>
									<button type="submit" class="btn btn-success">Update
									<span class="glyphicon glyphicon-saved"></span></button>
									</div>
									</div>
								</c:when>
								<c:otherwise>
								<div class="form-group">
  								<label class="col-md-0 control-label"></label>
  								<div class="col-md-4"><br>
									<button type="submit" class="btn btn-info">View
									<span class="glyphicon glyphicon-list"></span></button>
									</div>
									</div>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					</fieldset>
			</form>
			</div>
			<c:if test="${not empty addStatus}">
				<c:choose>
					<c:when test="${addStatus!=null&&addStatus }">
						<div class="alert alert-success" role="alert" id="success_message">Successfully 
					<i class="glyphicon glyphicon-ok-sign"></i> Employee Successfully Updated!</div>
					</c:when>
					<c:otherwise>
						<div class="alert alert-warning" role="alert" id="success_message">Unsuccessfully 
					<i class="glyphicon glyphicon-remove-sign"></i> Employee Unsuccessfully Updated!</div
					</c:otherwise>
				</c:choose>
			</c:if>
		</div>
	
	
	
	<div class="container">
		<!--Accordion wrapper-->
<div class="accordion md-accordion" id="accordionEx" role="tablist" aria-multiselectable="true">

  <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingOne1">
      <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseOne1" aria-expanded="true"
        aria-controls="collapseOne1">
        <h5 class="mb-0">
         Employee Assignment <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseOne1" class="collapse show" role="tabpanel" aria-labelledby="headingOne1"
      data-parent="#accordionEx">
      <div class="card-body" style="background-size:400px 240px;background-repeat:no-repeat;background-position: 680px 20px;background-image:url(https://cmkt-image-prd.freetls.fastly.net/0.1.0/ps/4354066/910/607/m1/fpnw/wm0/developer-preview-01-.png?1524634780&s=db2717ecada59f8387d85fd2cef9ce8f)">
      	<p class="grey-text">
      		Select projects to start working
      	</p>
      	<select style="width:50%" class="browser-default custom-select">
		  <option selected>Open this select menu</option>
		  <option value="1">One</option>
		  <option value="2">Two</option>
		  <option value="3">Three</option>
		</select>
      
      	<!-- Material input -->
		<div class="md-form">
		  <input style="width:50%" type="text" id="form1" class="form-control">
		  <label for="form1">Reason for transferring</label>
		</div>
		
		<!-- Select date -->
		
		<div class="form-group">
			<label class="grey-text" for="dateExample">HR Date</label>
			    <input style="width:50%"t class="form-control" name="dateRequested" type="date" value="2011-08-19" id="example-date-input">
		</div>
		
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
        assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
        nesciunt sapiente ea proident.
        <div>
        	<button class="btn btn-sm btn-success">update information</button>
        </div>
      </div>
    </div>

  </div>
  <!-- Accordion card -->

  <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingTwo2">
      <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseTwo2"
        aria-expanded="false" aria-controls="collapseTwo2">
        <h5 class="mb-0">
          Trainings and Educational Attainment <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseTwo2" class="collapse" role="tabpanel" aria-labelledby="headingTwo2"
      data-parent="#accordionEx">
      <div class="card-body">
      
      <p class="grey-text">
      More trainings?
      </p>
      <!-- Material input -->
		<div class="md-form">
		  <input type="text" id="form1" class="form-control">
		  <label for="form1">ex: Full Stack Developer Training </label>
		</div>
		
		<p class="grey-text">
      More Educational Achievements?
      </p>
      <!-- Material input -->
		<div class="md-form">
		  <input type="text" id="form1" class="form-control">
		  <label for="form1">ex: Impact Hackathon 2050 - Second Place, Clampr </label>
		</div>
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
        assumenda shoreditch et. 
        <div>
        	<button class="btn btn-sm btn-success">update information</button>
        </div>
      </div>
    </div>

  </div>
  <!-- Accordion card -->

  <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingThree3">
      <a class="collapsed" data-toggle="collapse" data-parent="#accordionEx" href="#collapseThree3"
        aria-expanded="false" aria-controls="collapseThree3">
        <h5 class="mb-0">
          Employee Job Promotion <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

	    <!-- Card body -->
	    <div id="collapseThree3" class="collapse" role="tabpanel" aria-labelledby="headingThree3"
	      data-parent="#accordionEx">
	      <div class="card-body">
	        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
	        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
	        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
	        assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
	        nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
	        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
	        labore sustainable VHS.
	      </div>
	    </div>
	
	  </div>
	  <!-- Accordion card -->
	  
	   <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingFour4">
      <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseFour4" aria-expanded="false"
        aria-controls="collapseFour4">
        <h5 class="mb-0">
         Employee Relocation <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseFour4" class="collapse" role="tabpanel" aria-labelledby="headingFour4"
      data-parent="#accordionEx">
      <div class="card-body">
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
        assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
        nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
        labore sustainable VHS.
      </div>
    </div>

  </div>
  <!-- Accordion card -->
  
    
	   <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingFive5">
      <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseFive5" aria-expanded="false"
        aria-controls="collapseFive5">
        <h5 class="mb-0">
         Benefits Entitlement <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseFive5" class="collapse" role="tabpanel" aria-labelledby="headingFive5"
      data-parent="#accordionEx">
      <div class="card-body">
        	 <p class="grey-text">
      New Benefits Entitlement?
      </p>
      <form action="#" method="POST">
		<div class="md-form">
		  <input style="width:50%" 
		  type="text" id="form1" 
		  name=""
		  class="form-control">
		  <label for="form1">ex: Earliest employee earns 2000 pesos</label>
		</div>
      	
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
        assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
        nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
        labore sustainable VHS.
        <div>
        	<button type="submit" class="btn btn-sm btn-success">update benefits entitlement</button>
        </div>
        </form>
      </div>
    </div>

  </div>
  <!-- Accordion card -->
  
    <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingSix6">
      <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseSix6" aria-expanded="false"
        aria-controls="collapseSix6">
        <h5 class="mb-0">
         Salary Adjustment <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseSix6" class="collapse" role="tabpanel" aria-labelledby="headingSix6"
      data-parent="#accordionEx">
      <div class="card-body">
      	 <p class="grey-text">
      New Salary Package?
      </p>
      <form action="#" method="POST">
		<div class="md-form">
		  <input style="width:50%" 
		  type="text" id="form1" 
		  name="salary"
		  class="form-control">
		  <label for="form1">ex: 50000</label>
		</div>
      	
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
        assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
        nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
        labore sustainable VHS.
        <div>
        	<button type="submit" class="btn btn-sm btn-success">update salary package</button>
        </div>
        </form>
      </div>
    </div>

  </div>
  <!-- Accordion card -->
  
    <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingSeven7">
      <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseSeven7" aria-expanded="false"
        aria-controls="collapseSeven7">
        <h5 class="mb-0">
         Change of Civil Status and Additional Dependent <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseSeven7" class="collapse" role="tabpanel" aria-labelledby="headingSeven7"
      data-parent="#accordionEx">
      <div class="card-body">
       	 <p class="grey-text">
      Change of status?
      </p>
      <form action="#" method="POST">
		<div class="md-form">
		  <input style="width:50%" 
		  type="text" id="form1" 
		  name=""
		  class="form-control">
		  <label for="form1">ex: Divorced or iniwanan nang mahal</label>
		</div>
		
		<p class="grey-text">
		Adding a dependent?
		</p>
		<div class="md-form">
		  <input style="width:50%" 
		  type="text" id="form1" 
		  name=""
		  class="form-control">
		  <label for="form1">ex: Fredrick under dependent</label>
		</div>
      	
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
        wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
        eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
        assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
        nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
        farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
        labore sustainable VHS.
        <div>
        	<button type="submit" class="btn btn-sm btn-success">update employees' status</button>
        </div>
        </form>
      </div>
    </div>

  </div>
  <!-- Accordion card -->
  
    <!-- Accordion card -->
  <div class="card">

    <!-- Card header -->
    <div class="card-header" role="tab" id="headingEight8">
      <a data-toggle="collapse" data-parent="#accordionEx" href="#collapseEight8" aria-expanded="false"
        aria-controls="collapseEight8">
        <h5 class="mb-0">
         Disciplinary Issue Tracker <i class="fas fa-angle-down rotate-icon"></i>
        </h5>
      </a>
    </div>

    <!-- Card body -->
    <div id="collapseEight8" class="collapse" role="tabpanel" aria-labelledby="headingEight8"
      data-parent="#accordionEx">
      <div class="card-body">
      <form action="#" method="POST">
      <div class="row">
      
      <div class="col">
      <div class="form-group">
			<label class="grey-text" for="dateExample">Date Filed</label>
			    <input style="width:50%"
			    class="form-control" name="" 
			    type="date" placeholder="mm/dd/yy" 
			    id="example-date-input">    
		</div>
		</div>
		
		<div class="col" style="margin-right:-30%">
		<div class="form-group">
			<label class="grey-text" for="dateExample">Date Resolved</label>
			    <input style="width:50%"
			    class="form-control" name="" 
			    type="date" placeholder="mm/dd/yy" 
			    id="example-date-input">    
		</div>
		</div>
		
		</div>
		<div class="form-group shadow-textarea">
		  <label class="grey-text" for="exampleFormControlTextarea6">Issue Information</label>
		  <textarea class="form-control z-depth-1" id="exampleFormControlTextarea6" rows="3" placeholder="Write something here..."></textarea>
		</div>
       <!-- Material input -->
		<div class="md-form">
		  <input type="text" id="form1" class="form-control">
		  <label for="form1">Final Decision</label>
		</div>
		
		<div>
        	<button type="submit" class="btn btn-sm btn-success">update employee's disciplinary tracker</button>
        </div>		
		
        </form>
      </div>
    </div>

  </div>
  <!-- Accordion card -->
	
	</div>
	<!-- Accordion wrapper -->
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