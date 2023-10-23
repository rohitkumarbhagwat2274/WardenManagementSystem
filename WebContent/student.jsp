<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String s_regno=request.getParameter("s_regno");
String s_name=request.getParameter("s_name");
String s_dob=request.getParameter("s_dob");
String s_address=request.getParameter("s_address");
String s_pincode=request.getParameter("s_pincode");
String s_country=request.getParameter("s_country");
String s_phone=request.getParameter("s_phone");
String s_email=request.getParameter("s_email");
String s_state=request.getParameter("s_state");
String s_food_choice=request.getParameter("s_food_choice");

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
	Statement stmt=con.createStatement();
	int i=stmt.executeUpdate("insert into student values('"+s_regno+"','"+s_name+"','"+s_dob+"','"+s_address+"','"+s_pincode+"','"+s_country+"','"+s_phone+"','"+s_email+"','"+s_state+"','"+s_food_choice+"')");
	System.out.print("User registered successfully");
}
catch(Exception e)
{
	out.print(e);
	//e.printStackTrace();
}
	
	%>

</body>
</html>