<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Details</title>
<style type="text/css">
body
{
	margin: 0;
	padding: 0;
	background: #262626;
	background-size: cover;
	font-family: sans-serif;
}
.order
{
	position: absolute;
	top: 30%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 40%;
	height: 220px;
	padding: 80px 40px;
	box-sizing: border-box;
	
}
.order input
{
	width: 100%;
	margin-bottom: 20px;
}
h3
{
	color: red;
	text-align: center;
}
h2
{
	margin: 0;
	padding: 0 0 20px;
	color: #efed40;
	text-align: center;
}
h1
{
	color: #efed40;
	text-align: center;
}
.order input[type="text"],
.order input[type="email"],
.order input[type="number"], select, option
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 20px;
	color: #fff;
	font-size: 15px;
}
::placeholder
{
	color: rgba(255,255,255,.5);
}
.order input[type="submit"]
{
	border: none;
	outline: none;
	height: 40px;
	color: #fff;
	font-size: 16px;
	background: #ff267e;
	cursor: pointer;
	border-radius: 10px;
}
.order input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
</style>
</head>
<body>
<div id='container'>
  <div class='order'>
  <form action="plantOrderAction.jsp" method="post">
  <input type="text" name="name" placeholder="Enter Name" required>
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required> 
  <input type="text" name="address" placeholder="Enter Your Address" required>
  <input type="text" name="city" placeholder="Enter Your City Name" required>  
  <input type="number" name="pinCode" placeholder="Enter Pin Code" required>
  <input type="text" name="state" placeholder="Enter Your State Name" required>
  <input type="text" name="plantName" placeholder="Enter Plant Name" required>
  <input type="number" name="plant_id" placeholder="Enter Plant_ID" required>   
  <input type="submit" value="Done"> 
  </form>
      <h2><a href="bill.html">Next</a></h2>
  </div>
  <div class='plantorder'>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 align="center">Order Confirm</h3>
<% } %>
<% 
if("invalid".equals(msg))
{
%>
<h3 align="center">Some thing Went Wrong! Please Fill Correct Details. </h3>
<%} %>

    <h1 align="center">Please Fill Order Details</h1>
    
  </div>
</div>

</body>
</html>