<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ForgotPassword</title>
<style type="text/css">
body
{
	margin: 0;
	padding: 0;
	background: url(BG2.jpg);
	background-size: cover;
	font-family: sans-serif;
}
.signup
{
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%,-50%);
	width: 350px;
	height: 420px;
	padding: 80px 40px;
	box-sizing: border-box;
	background: rgba(0,0,0,.5);
}
.signup input
{
	width: 100%;
	margin-bottom: 20px;
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
.signup input[type="text"],
.signup input[type="email"],
.signup input[type="number"],
.signup input[type="password"], select, option
{
	border: none;
	border-bottom: 1px solid #fff;
	background: transparent;
	outline: none;
	height: 20px;
	color: #fff;
	font-size: 16px;
}
::placeholder
{
	color: rgba(255,255,255,.5);
}
.signup input[type="submit"]
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
.signup input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}
</style>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
     <select name="securityQuestion">
     <option value="What was your first car?">What was your first car?</option>
     <option value="What was your favourite pet?">What was your favourite pet?</option>
     <option value="Are you Robot? Yes or No">Are you Robot? Yes or No</option>
     </select>
     <input type="text" name="answer" placeholder="Enter Answer" required>
     <input type="password" name="newPassword" placeholder="Enter your new Password to set" required>
     <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %> 
<h3 align="center">Password Changed Successfully!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 align="center">Some thing Went Wrong! Try Again !</h3>
<%} %>
    <h1 align="center">Indoor Plants Nursery</h1>
 
  </div>
</div>
</body>
</html>