<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	<h3 align="center"> Table </h3>
	<table border="1" width="70%" align="center">
	<tr>
		<th> ID</th>
		<th>Title</th>
		<th> Abstract </th>
		<th>PDF</th>
	</tr>
<c:forEach items="${paper}" var="user">
	<tr>
		<td>${user.paperID}</td> 
		<td>${user.title}</td>
		<td>${user.abstracts}</td>
		<td>${user.pdf}</td>
	</tr>
	</c:forEach>
	
	
</table>
<br>
<table border="1" width="70%" align="center">
	<tr>
		<th>Username</th>
		<th>Email</th>
	</tr>
<c:forEach items="${UserList}" var="user">
	<tr>
		<td>${user.username}</td> 
		<td>${user.email}</td>
	</tr>
	</c:forEach>
	
	
</table>
<br>

<table border="1" width="70%" align="center">
	<tr>
		<th>Email</th>
		<th>Name</th>
		<th>Affiliation</th>
	</tr>
<c:forEach items="${author}" var="user">
	<tr>
		<td>${user.email}</td> 
		<td>${user.name}</td>
		<td>${user.affiliation}</td>
	</tr>
	</c:forEach>
</table>

</body>
</html>