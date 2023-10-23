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
String user_name=request.getParameter("user name");
String DOB=request.getParameter("DOB");
String address=request.getParameter("address");
String email_id=request.getParameter("email");
String password=request.getParameter("password");
String conform_password=request.getParameter("conform password");

try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
	Statement stmt=con.createStatement();
	int i=stmt.executeUpdate("insert into signin values('"+user_name+"','"+DOB+"','"+address+"','"+email_id+"','"+password+"','"+conform_password +"')");
	out.print("User registered succesfully <a href='login.html'>Login</a> to continue.");
}
catch(Exception e)
{
	System.out.print(e);
	e.printStackTrace();
}
	
	%>

</body>
</html>