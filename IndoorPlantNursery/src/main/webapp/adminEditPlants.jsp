<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Style.css">
</head>
<body>
	<div class="LoginBox">
		<img src="BG2.jpg" class="user">
		<h2>Admin Page</h2>
		<form action="AdminCheck.jsp" method="post">
			<p>Insert Plant:</p><br>
			<input type="submit" value="INSERT" required>
			<p>Delete Plant:</p><br>
			<input type="submit" value="DELETE" required> 
			<input type="submit" value="LogOut" required> 
		</form>
	</div>

</body>
</html>