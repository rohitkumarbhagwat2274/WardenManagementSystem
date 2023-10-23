<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection
con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
Statement stmt = con.createStatement();
ResultSet rs=stmt.executeQuery("select * from attendance");

while(rs.next())
{
out.print(rs.getString(1 )+" , ");
out.print(rs.getString(2 )+" , ");
out.print(rs.getString(3 )+" , ");
out.print(rs.getString(4 )+"\n </br>");

}
con.close();
}
catch(Exception e){
	out.print(e);
}
%>

</body>
</html>