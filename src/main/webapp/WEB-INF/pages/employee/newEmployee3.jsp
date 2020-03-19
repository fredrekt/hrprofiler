<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
			<form method="post" action="/employee/add">
			<h1>Employment Details</h1>
			<select name="Designation">
					<option value="H.R. manager">
					   H.R. manager
					</option>
					<option value="PHP developer">
					  PHP developer
					</option>
					<option value="Android developer">
					  Android developer
					</option>
					<option value="Project Manager">
					 Project Manager
					</option>
					<option value="General Manager">
					   General Manager
					</option>
					<option value="Business Development Manager">
					  Business Development Manager
					</option>
					<option value="Internet Marketing Head">
					  Internet Marketing Head
					</option>
					<option value="Content Writter">
					  Content Writter
					</option>
					<option value="System Administrator">
					  System Administrator
					</option>
					<option value="CEO/MD">
					 CEO/MD
					</option>
				
					</select></td>
					
					
					<select name="Level">
					<option value="Applications Developer ">
					  Applications Developer 
					</option>
					<option value="Technical Support Specialist ">
					 Technical Support Specialist 
					</option>
					<option value="Business/Systems Analyst ">
					 Business/Systems Analyst 
					</option>
					<option value="Web Developer ">
					Web Developer 
					</option>
					<option value=" Network/System Administrator ">
					    Network/System Administrator 
					</option>
					<option value="Business Development Manager">
					  Business Development Manager
					</option>
					<option value="Database Administrator ">
					  Database Administrator 
					</option>
					<option value=" Systems Engineer ">
					   Systems Engineer 
					   
					</option>
					
					</select></td>
					
					
					<tr>
						<td>Salary:</td>
						<td><input type="text" name="getSalaryPackage" value="${employee.getSalaryPackage() }"></td>
					</tr>
					
						<tr>
						<input type="hidden" value="${EmpID }" name="EmpID"/>
						<td>
							<c:choose>
								<c:when test="${employee!=null }">
									<button type="submit" class="btn btn-success">Update</button>
								</c:when>
								<c:otherwise>
									<button type="submit" class="btn btn-success">Submit All Fields</button>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>



</body>
</html>