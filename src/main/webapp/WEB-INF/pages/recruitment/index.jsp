<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<tiles:insertDefinition name="mainLayout" flush="true">
	<tiles:putAttribute name="title">
		Recruitment
	</tiles:putAttribute>
	<tiles:putAttribute name="body">
		<div class="container">
			<nav aria-label="breadcrumb">
			  <ol class="breadcrumb">
			    <li class="breadcrumb-item active" aria-current="page">Recruitment</li>
			  </ol>
			</nav>
			<jsp:useBean id="now" class="java.util.Date"/>
			<fmt:formatDate var="dateNow" value="${now}" pattern="yyyy-MM-dd"/>
			<a href="/recruitment/new" class="btn btn-success">New On-boarding Request</a><br/>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Employee ID</th>
						<th>Date Requested</th>
						<th>Date of Job Offered</th>
						<th>Date of On-Boarding</th>
						<th>Accepted by Candidate</th>
						<th>Employee Details</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach items="${recruitmentDetails }" var="recruit">
						<tr>
							<td>${recruit.getEmpID() }</td>
							<td>${recruit.getDateRequested() }</td>
							<td>${recruit.getDateJobOffered() }</td>
							<td>${recruit.getDateOnboarding() }</td>
							<c:choose>
								<c:when test="${recruit.getDateAccepted()==null }">
									<td><a id="candidateAccept" href="#" onclick="onCandidateAccept(${recruit.getEmpID() },'${dateNow}')">Accept</a> / <a href="#">Decline</a></td>
									<td></td>
								</c:when>
								<c:otherwise>
									<td>${recruit.getDateAccepted() }</td>
									<td><a href="/employee/new?EmpID=${recruit.getEmpID() }">Add Employee</a></td>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
			
		</div>
	</tiles:putAttribute>
	<tiles:putAttribute name="jsLinks">
		<script>
			$("#recruitmentMenu").addClass("active");
		</script>
		<script>
			function onCandidateAccept(id,date){
				Swal.fire({
					  title: 'Are you sure you want to accept this?',
					  text: "You won't be able to revert this!",
					  type: 'warning',
					  showCa	xncelButton: true,
					  confirmButtonColor: '#3085d6',
					  cancelButtonColor: '#d33',
					  confirmButtonText: 'Yes'
					}).then((result) => {
					  if (result.value) {
					    /*Swal.fire(
					      'Accepted!',
					      'Request accepted',
					      'success'
					    );*/
					    location.replace("/recruitment/update/dateaccepted?id="+id+"&date="+date);
					  }
					});
			}
		</script>
	</tiles:putAttribute>
</tiles:insertDefinition>