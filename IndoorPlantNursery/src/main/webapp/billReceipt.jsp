<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Receipt</title>
</head>
<body>
<button><a href="home.jsp">Back to Home</a></button>
<button><a href="category.html">Continue to PlantOrder</a></button>
<div class="bill"><br><br><br><br><br>
Customer Name: <input type="text" name="userName">
Date: <input type="number" name="date">
</div>
<h2>--------------------------------------------------------------</h2>

<%
String name=request.getParameter("hd");
int price = Integer.parseInt(request.getParameter("pri"));
int quantity = Integer.parseInt(request.getParameter("qty"));
out.print("Plant Name: " + name + "<br>");
out.print("Plant Price: " + price + "<br>");
out.print("Quantity: " + quantity + "<br>");
out.print("-----------------------------------------<br>");
int total=price*quantity;
out.print("Your total Bill is: " + total);
%>
</body>
</html>