<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="main.css" />
<title>Insert title here</title>
</head>
<body>

<form action="regform.jsp" style="text-align:center">
<div class="image round">
								<img src="image1.jpg" alt="Pic 01" />
							</div>
<table>
<h1>user Regform:</h1>
<tr>
<td><label>Name:</label>
<td><input type="text" name="name" size="10"></td>
</tr>
<tr>
<td><label>Rollno:</label>
<td><input type="text" name="rollno" size="10"></td>
</tr>
<tr>
<td><label>Email:</label>
<td><input type="email" id="email" name="email" size="10"></td>
</tr>
<tr>
<td><label>Phone:</label>
<td><input type="text" name="phone" size="10"></td>
</tr>
<tr>
<td><label>Userid:</label>
<td><input type="text" name="userid" size="10"></td>
</tr>
<tr>
<td><label>Password:</label>
<td><input type="text" name="pass" size="10"></td>
</tr>
<tr>
<td><input type="submit" name="Register"></td>
</tr>
<tr><td><a href="log.jsp"><input type="button" value="Back" name="btnstudet"/></a></td></tr>
<tr>
<td><a href="#">Forget Password?</a></td>
</tr>

</table>
</form>
<%
String name=request.getParameter("name");
String rollno=request.getParameter("rollno");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String uid=request.getParameter("userid");
String pass=request.getParameter("pass");

if(name!=null)
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
PreparedStatement stmt=con.prepareStatement("insert into regform values(?,?,?,?,?,?)");

stmt.setString(1, name);
stmt.setString(2, rollno);
stmt.setString(3, email);
stmt.setString(4, phone);
stmt.setString(5, uid);
stmt.setString(6, pass);
stmt.execute();

out.print("Registration Successfully");
con.close();
}
%>

</body>
</html>