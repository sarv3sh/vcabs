<%@page import="java.sql.*"%>
<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String pickuploc=request.getParameter("fromlo");
String droplocation=request.getParameter("tolo");
String mobilenumber=request.getParameter("mobilenumber");
String gender=request.getParameter("gender");
String pickupdate=request.getParameter("pickupdate");
String pickuptime=request.getParameter("pickupti");
try
{
	java.sql.Connection con;
	Class.forName("com.mysql.jdbc.Driver");
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO passenger(firstname,lastname,email,pickuploc,droplocation,mobilenumber,gender,pickupdate,pickuptime) VALUES ('"+firstname+"','"+lastname+"','"+email+"','"+pickuploc+"','"+droplocation+"','"+mobilenumber+"','"+gender+"','"+pickupdate+"','"+pickuptime+"')");
	response.sendRedirect("ressave.html");
	
}
catch(Exception e)
{
//out.println(e);
response.sendRedirect("error.html");
}
%>

