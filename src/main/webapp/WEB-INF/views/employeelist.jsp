<%@page import="com.Bean.EmployeeBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

table td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

table tr:nth-child(even) {
	background-color: #f2f2f2;
}

table tr:hover {
	background-color: #ddd;
}

table th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #04AA6D;
	color: white;
}
</style>
</head>
<body>
	<%-- <%
	EmployeeBean employeeBean = (EmployeeBean) session.getAttribute("employeeBean");
	%>
	<h1>
		Logged in employee
		<%=employeeBean.geteName()%></h1> --%>
	<table class="table">
		<tr>
			<td>Employee Id</td>
			<td>Employee Name</td>
			<td>Employee Age</td>
			<td>Employee Email</td>
		</tr>

		<c:forEach var="list" items="${list }">
			<tr>
				<td>${list.eId }</td>
				<td>${list.eName }</td>
				<td>${list.eAge }</td>
				<td>${list.eEmail }</td>
				<td><a href="./deleteemployee/${list.eId }">DELETE</a></td>
				<td><a href="./editemployee/${list.eId }">UPDATE</a></td>
			</tr>
		</c:forEach>


	</table>
</body>
</html>