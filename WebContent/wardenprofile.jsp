<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="A327EA">

<%

String uname=request.getParameter("uname");
String Dob=request.getParameter("dob");
String address=request.getParameter("address");
String email_id=request.getParameter("email");
String state=request.getParameter("state");
String pincode=request.getParameter("pincode");
String country=request.getParameter("country");
String Pnumber=request.getParameter("pnumber");
String payment=request.getParameter("payment");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
	Statement stmt=con.createStatement();
	int i=stmt.executeUpdate("insert into uprofile values('"+uname+"','"+Dob+"','"+address+"','"+email_id+"','"+state+"','"+pincode+"','"+country+"','"+Pnumber+"','"+payment+"')");
	out.print("User registered successfully");
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
	
	%>


</body>
</html>