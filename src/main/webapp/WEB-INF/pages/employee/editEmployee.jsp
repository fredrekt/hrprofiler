<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="mainLayout" flush="true">
	<tiles:putAttribute name="title">Update Employee</tiles:putAttribute>
	<tiles:putAttribute name="body">
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
				  
				  	<select disabled name="EmpID" style="width:500px" class="browser-default custom-select">
					  <option selected>Employee Already Selected</option>
					  <c:forEach items="${employees}" var="emp">
					  <option value="${emp.getEmpID()}">${emp.getLastName()}, ${emp.getFirstName()}</option>
					 </c:forEach>
					 </select>
					
				  </div>
			  </div>
			  
			  <button disabled type="submit" class="btn btn-primary btn-lg mt-3">Get Updating</button>
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
						<script>
							window.alert('Employee Information: Successfully Updated!')
						</script>
						<div class="container animated bounce infinite">
						<div class="alert alert-success alert-dismissible fade show" role="alert" id="success_message">Successfully 
					<i class="glyphicon glyphicon-ok-sign"></i> Employee Successfully Updated!
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						    <span aria-hidden="true">&times;</span>
						    </div>
						  </button>
						</div>
					</c:when>
					<c:otherwise>
						<div class="alert alert-warning" role="alert" id="success_message">Unsuccessfully 
					<i class="glyphicon glyphicon-remove-sign"></i> Employee Unsuccessfully Updated!</div
					</c:otherwise>
				</c:choose>
			</c:if>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>