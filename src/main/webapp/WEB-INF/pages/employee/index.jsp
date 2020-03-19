<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



	<tiles:insertDefinition name="mainLayout" flush="true">
		<tiles:putAttribute name="title">
			Employee
		</tiles:putAttribute>
	
		<tiles:putAttribute name="body">
			<div class="container">
				<form action="/employee/search" method="get">
					<input type="text" placeholder="Search for employee ID" name="empId">
					<button type="submit">Search</button>
				</form>
				</input>
				<c:if test="${not empty employee}">
						${employee.toString() }<br>
				</c:if>
				<table class="table table-striped">
					<thead>
						<tr>
							<th><center>CompanyID</th></center>
							<th><center>Last Name</th></center>
							<th><center>First Name</th></center>
								
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${employees }" var="emp">
							<tr>
								<td><center>${emp.getcompanyID() }</td></center>
								<td><center>${emp.getLastName() }</td></center>
								<td><center>${emp.getFirstName() }</td></center>
								<td><center> <a href="/employee/viewall">View More Details</a></td></center>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</tiles:putAttribute>
	</tiles:insertDefinition>
	
	<script>
		$("#employeeMenu").addClass("active");
	</script>

