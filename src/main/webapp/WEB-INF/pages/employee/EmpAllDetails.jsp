<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee Details</title>
</head>
<body>

<table style="width:100%" border="2px">
  <tr>
    <h1><center>Employee Personal Information</center></h1>
    <th>LastName</th>
    <th>MiddleName</th>
    <th>FirstName</th>
    <th>Date of Birth</th>
    <th>Gender</th>
    <th>Address</th>
    <th>Tel No</th>
    <th>Mobile No</th>
    <th>SSS No</th>
    <th>BIR No</th>
    <th>TIN No</th>
    <th>PhilHealth No</th>
     <th>HDMF No</th>
  </tr>
  <c:forEach items="${employees}" var="emp">
							<tr>
							<td><center>${emp.getLastName() }</td></center>
							<td><center>${emp.getMiddleName() }</td></center>
							<td><center>${emp.getFirstName() }</td></center>
							<td><center>${emp.getDateOfBirth() }</td></center>
							<td><center>${emp.Gender() }</td></center>
							<td><center>${emp.getAddress() }</td></center>
							<td><center>${emp.getTelNumber() }</td></center>
							<td><center>${emp.getMobNumber() }</td></center>
							<td><center>${emp.getSssNumber() }</td></center>
							<td><center>${emp.getBirNumber() }</td></center>
							<td><center>${emp.getTinNumber() }</td></center>
							<td><center>${emp.getPhilHNumber() }</td></center>
							<td><center>${emp.getHdmfNumber() }</td></center>
							</tr>
						</c:forEach>
						</table>
						
<table style="width:50%" align="center" border="5px">
  <tr>
    <h1><center>Employee Educational Background</center></h1>
    <th>Primary</th>
    <th>YearStarted</th>
    <th>YearEnded</th>
    
    
    </tr>
      <c:forEach items="${employees}" var="emp">
   
							<tr>	
							<td><center>${emp.getEdBackground() }</td></center>
							<td><center>${emp.getYear() }</td></center>
							<td><center>${emp.getYear2() }</td></center>
							
								</c:forEach>
    						</tr>
    
    
    
    </table>
    <table style="width:50%" align="center" border="4px">
  <tr>


    <th>Secondary</th>
    <th>YearStarted</th>
    <th>YearEnded</th>
    </tr>
      <c:forEach items="${employees}" var="emp">
   
							<tr>	
							<td><center>${emp.getSecondary() }</td></center>
							<td><center>${emp.getYearSec() }</td></center>
							<td><center>${emp.getYearSec2() }</td></center>
							
								</c:forEach>
								
	  </table>
    <table style="width:50%" align="center" border="4px">
  <tr>


    <th>College</th>
    <th>YearStarted</th>
    <th>YearEnded</th>
    </tr>
      <c:forEach items="${employees}" var="emp">
   
							<tr>	
							<td><center>${emp.getCollege() }</td></center>
							<td><center>${emp.getCollegeYear() }</td></center>
							<td><center>${emp.getCollegeYear2() }</td></center>
							
								</c:forEach>
															
  <table style="width:10%" align="center" border="5px">
  <tr>
    <h1><center>Employee Category</center></h1>
    <th>Category</th>
    
    
    
    </tr>
      <c:forEach items="${employees}" var="emp">
   
							<tr>	
							<td><center>${emp.getEmpCategory() }</td></center>
							
							
								</c:forEach>
    						</tr>
    						
    						
  <table style="width:35%" align="center" border="5px">
  <tr>
    <h1><center>Employment Details</center></h1>
    <th>Designation</th>
    <th>Level</th>
     <th>Salary Package</th>
    

    </tr>
    						
    						
        <c:forEach items="${employees}" var="emp">
   
							<tr>	
							<td><center>${emp.getDesignation() }</td></center>
							<td><center>${emp.getLevel() }</td></center>
							<td><center>${emp.getSalaryPackage() }</td></center>
							
							
								</c:forEach>
    						</tr>
    						
    
    
    </table>
  
</body>
</html>