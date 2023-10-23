<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="background.css">
 <style>
  .login-box{
    height: 380px;
}</style>
<title>Insert title here</title>
</head>
<body>
<form action="login.jsp"> 
<div class="login-box"> 
<img src="cmr.jpg" class="avatar">
<table><br/>
<thead>User Login Form</thead>
<tr>
<td><label> User Id: </label>  </td>
<td><input type="text" name="userid" size="15"/></td>
</tr>
<tr>
<td><label> Password: </label>  </td>
<td><input type="password" name="pass" size="15"/></td>
</tr>
<tr>
<td colspan=2><input type="submit" value="Login"/> </td>
</tr>
<tr>
<td><a href="regform.jsp">Signin</a></td>
</tr>


</table>
</form>
<%
String userid = request.getParameter("userid");
String pass = request.getParameter("pass");

if(pass!=null)
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
PreparedStatement stmt = con.prepareStatement("select * from regform where userid=? and pass=?");
stmt.setString(1, userid);
stmt.setString(2, pass);
ResultSet rs = stmt.executeQuery();
if(rs.next()){
out.print(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"  "+rs.getString(4)+"  "+rs.getString(5)+"  "+rs.getString(6));
out.print("<br>Login Successfull");
response.sendRedirect("wardenmanagerdashboard.html");
}
else{
	response.sendRedirect("error.jsp");
}
con.close();
}

%>

</body>
</html>