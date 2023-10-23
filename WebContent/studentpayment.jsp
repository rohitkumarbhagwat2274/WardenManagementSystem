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
<form action="studentpayment.jsp" style="text-align:center"> 

 
<table>
<h1>Student's payment detailed</h1>
<tr>
<td><label> Student payment Number: </label>  </td>
<td><input type="text" name="spayno" size="15"/></td>
</tr>
<tr>
<td><label> Student Registation number: </label>  </td>
<td><input type="text" name="s_reg" size="15"/></td>
</tr>
<tr>
<td><label> payment date: </label>  </td>
<td><input type="text" name="paydate" size="15"/></td>
</tr>
<tr>
<td><label> Payment Amount: </label>  </td>
<td><input type="text" name="amount" size="15"/></td>
</tr>
<tr>
<tr>
<td><label> Duse: </label>  </td>
<td><input type="text" name="duse" size="15"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"/></td> 
</tr>
<tr><td><a href="studentpay.html"><input type="button" value="Back" name="btnwrdn" /></a></td></tr>


</table>
</form>
<%
String s_p_no = request.getParameter("spayno");
String s_regno= request.getParameter("s_reg");
String p_date = request.getParameter("paydate");
String p_amount = request.getParameter("amount");
String duse = request.getParameter("duse");

if(s_regno != null)
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","12345");
PreparedStatement stmt=con.prepareStatement("insert into spay values(?,?,?,?,?)");

stmt.setString(1, s_p_no);
stmt.setString(2, s_regno);
stmt.setString(3, p_date);
stmt.setString(4, p_amount);
stmt.setString(5, duse);
stmt.execute();

out.print("Registration Successful!");
con.close();
}
%>

</body>
</html>