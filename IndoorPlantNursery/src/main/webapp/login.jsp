<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
body
{
	margin: 0;
	padding: 0;
	background: url(BG2.jpg);
	background-size: cover;
	font-family: sans-serif;
}
.signin
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
.signin input
{
	width: 100%;
	margin-bottom: 20px;
}
h2
{
	margin: 0;
	padding: 0 0 20px;
	color: green;
	text-align: center;
}
h1
{
	color: #efed40;
	text-align: center;
}
.signin input[type="email"],
.signin input[type="password"]
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
.signin input[type="submit"]
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
.signin input[type="submit"]:hover
{
	background: #efed40;
	color: #262626;
}

</style>
</head>
<body>
<div id='container'>
  <div class='signin'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="LogIn">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='login'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h3 align="center">Incorrect Username or Password</h3>
<% } %>
<%
if("invalid".equals(msg))
{
%>
<h3 align="center">Some thing Went Wrong! Try Again..!</h3>
<%} %>
    <h1 align="center">Indoor Plants Nursery</h1>
    
  </div>
</div>

</body>
</html>