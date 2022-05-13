<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String address=request.getParameter("address");
String city=request.getParameter("city");
String pinCode=request.getParameter("pinCode");
String state=request.getParameter("state");
String plantName=request.getParameter("plantName");
String plnat_id=request.getParameter("plnat_id");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into details values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3, mobileNumber);
	ps.setString(4, address);
	ps.setString(5, city);
	ps.setString(6, pinCode);
	ps.setString(7, state);
	ps.setString(8, plantName);
	ps.setString(9,plnat_id);
	ps.executeUpdate();
	response.sendRedirect("plantOrder.jsp?msg=valid");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("plantOrder.jsp?msg=invalid");
	
	}

%>