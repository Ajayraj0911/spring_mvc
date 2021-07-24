<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>Employee Name</td>
		<td>Employee Age</td>
	</tr>
	<tr>
		<c:forEach var="list" items="${list }">
		<td>${list.eName }</td>
		<td>${list.eAge }</td>
		<td><a href="/deleteemployee?ename=${list.eName }">DELETE</a></td>
		</c:forEach>
	</tr>
	
</table>
</body>
</html>