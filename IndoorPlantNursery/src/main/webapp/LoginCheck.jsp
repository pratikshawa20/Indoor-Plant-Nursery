<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Indoor Plants Nursery</title>
</head>
<body>

	<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	if ((username.equals("admin@gmail.com") && password.equals("admin"))) {
		response.sendRedirect("adminEditPlants.jsp");
	} else {
		response.sendRedirect("error.html");
	}
	%>
</body>
</html>