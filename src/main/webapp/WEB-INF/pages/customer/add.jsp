<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD STUDENT</title>
</head>
<body>
	<form action="http://localhost:8020/api/customer/add" method="post">
		Name:
		<input type="text" name="name" />
		<br />
		<button type="submit">Insert Me!!!</button>
	</form>
	
	<form action="http://localhost:8020/student/delete" method="post">
	<c:forEach items="${studentList}" var="studentVar">
		<input type="checkbox" name="studentIdToDelete" value="${studentVar.id}"/>THIS IS STUDENT : <a href="http://localhost:8020/student/update?studentId=${studentVar.id}">${studentVar.name}</a> AND ${studentVar.age}<br/>
	</c:forEach>
	<button type="submit">YOKO NA!!!</button>
	</form>
</body>
</html>