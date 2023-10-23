<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>show student's detailed</title>
</head>
<body bgcolor="EFB80C">
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
Statement stmt = con.createStatement();
ResultSet rs=stmt.executeQuery("select * from student\n\t");
while(rs.next())
{
out.print(rs.getString(1)+" , ");
out.print(rs.getString(2)+" , ");
out.print(rs.getString(3)+" , ");
out.print(rs.getString(4)+" , ");
out.print(rs.getString(5)+" , ");
out.print(rs.getString(6)+" , ");
out.print(rs.getString(7)+" , ");
out.print(rs.getString(8)+" , ");
out.print(rs.getString(9)+" , ");
out.print(rs.getString(10)+" \n</br>");
out.print("\br");
}
con.close();
%>
</body>
</html>