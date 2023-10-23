<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="main.css" />
<link rel="stylesheet" type="text/css" href="background.css">
<title>Insert title here</title>
</head>
<body>
<form method="post" action ="wardenpay.jsp">
Warden's Email :<br>
<input type="text" name="email"><br>
Payment Date :<br>
<input type="text" name="date"><br>
<input type = "submit" value="save" name="btnsave">
<a href="dashboard.html"><input type="button" value="back" name="btnwrdnsal"/></a>
<a href="dowardenpayment.jsp">Do payment</a>
</form>

</body>
</html>