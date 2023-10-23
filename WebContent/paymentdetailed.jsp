<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
Statement stmt = con.createStatement();
ResultSet rs=stmt.executeQuery("select * from spay");

while(rs.next())
{
out.print(rs.getString(1)+" , ");
out.print(rs.getString(2)+" , ");
out.print(rs.getString(3)+" , ");
out.print(rs.getString(4)+" , ");
out.print(rs.getString(5)+"<br/>");

out.print("\br");
}


con.close();
%>

</body>
</html>