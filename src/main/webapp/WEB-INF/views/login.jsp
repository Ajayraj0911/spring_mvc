<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text], select {
	width: 500px;
	padding: 12px 20px;
	margin: 8px 85px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}
input[type=password], select {
	width: 500px;
	padding: 12px 20px;
	margin: 8px 50px;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type=submit] {
	width: 693px;
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
</style>
</head>
<body>
	<form action="./employeeLogin">
		ENTER EMAIL<input type="text" name="txtEmployeeEmail"><br>
		ENTER PASSWORD<input type="password" name="txtEmployeePassword"><br>
		<input type="submit" value="submit">
	</form>
</body>
</html>