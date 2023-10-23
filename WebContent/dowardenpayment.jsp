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
<form method="post" action ="dowardenpayment.jsp">
Payment Id :<br>
<input type="text" name="payid"><br>
warden's email id :<br>
<input type="text" name="email"><br>
Payment's Date :<br>
<input type="text" name="paydate"><br>
Warden's Payment :<br>
<input type="text" name="payment"><br>
<input type = "submit" value="save" name="btnsave">
<a href="wardenmanagerdashboard.html"><input type="button" value="back" name="btnwrdnsal"/></a>
</form>
<%
String payid=request.getParameter("payid");
String email_id=request.getParameter("email");
String paydate=request.getParameter("paydate");
String payment=request.getParameter("payment");
if(payid!=null)
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
PreparedStatement stmt=con.prepareStatement("insert into regform values(?,?,?,?)");

stmt.setString(1, payid);
stmt.setString(2, email_id);
stmt.setString(3, paydate);
stmt.setString(4, payment);

out.print("Registration Successfully");
con.close();
}

%>
</body>
</html>