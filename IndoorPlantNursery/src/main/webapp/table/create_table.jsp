<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100)primary key,mobileNumber bigint,securityQuestion varchar(200),answer varchar(100),password varchar(100),address varchar(500),city varchar(100),state varchar(100),country varchar(100))";
	String q2="create table details(name varchar(100),email varchar(100)primary key, mobileNumber bigint,address varchar(100),city varchar(100),pinCode bigint,state varchar(100),plantName varchar(100),plant_id bigint)";
	System.out.print(q1);
	System.out.print(q2);
	//st.execute(q1);
	st.execute(q2);
	System.out.print("table created");
	con.close();
	
}
catch(Exception e)
{
	System.out.print(e);
	}
%>