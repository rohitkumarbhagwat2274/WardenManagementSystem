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
<form action="attendance.jsp">  
<table>
<thead>Student's Attendance</thead>
<tr>
<td><label> Today's Date: </label>  </td>
<td><input type="date"id="birthday"name="adate"></td>

</tr>

<tr>
<td><label> registation: </label>  </td>
<td><input type="text" name="reg" size="15"/></td>
</tr>
<tr>
<td><label> Student's name: </label>  </td>
<td><input type="text" name="name" size="15"/></td>
</tr>
<tr>
<td><label> Absent/present: </label>  </td>
<td><input type="text" name="ap" size="15"/></td>
</tr>

<tr>
<td colspan=2><input type="submit" value="Login"/> </td>
</tr>
<tr><td><a href="dashboard.html"><input type="button" value="Back" name="btnstudet"/></a></td></tr>
</table>
</form>

<%
String adate=request.getParameter("date");
String reg=request.getParameter("reg");
String name=request.getParameter("name");
String ap=request.getParameter("ap");

if(name!=null)
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
PreparedStatement stmt=con.prepareStatement("insert into attendance values(?,?,?,?)");

stmt.setString(1, adate);
stmt.setString(2, reg);
stmt.setString(3, name);
stmt.setString(4, ap);
stmt.execute();

out.print("Registration Successfully");
con.close();
}
%>

</body>
</html>