<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], select {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 100%;
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

div {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

error {
	color: red;
}
</style>
</head>
<body>
	<form:form method="post" modelAttribute="employeeBean"
		action="insertemployee">
		<table>
			<tr>
				<td>Employee Name</td>
				<td><form:input path="eName" /> <form:errors path="eName"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td>Employee Age</td>
				<td><form:input path="eAge" /> <form:errors path="eAge"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td>Employee Email</td>
				<td><form:input path="eEmail" /> <form:errors path="eEmail"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td>Employee Password</td>
				<td><form:input path="ePassword" /> <form:errors
						path="ePassword" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td><input type="submit" value="SUBMIT"></td>
			</tr>
		</table>
	</form:form>
</body>
</html>