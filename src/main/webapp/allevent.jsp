<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Page</title>
</head>
<style>
h1{
text-align:center;
background-color: red;
padding:2vh 0;
font-family: sans-serif;
}

</style>
<body>
<h1>Events Page List</h1>
	<table border="5" cellpadding="10" style="border-collpase:collapse; margin:auto";>
	<tr>
	<th>ID</th>
	<th> Event Title</th>
	<th>Location</th>
	<th>date</th>
	<th>Guest</th>
	<th colspan="2">Action</th>
	
	</tr>
	
	
	
	
	<%
	ResultSet rs =(ResultSet)request.getAttribute("rs");
	while(rs.next()){
	%>
	
	<tr>
	<td><%=rs.getInt(1) %></td>
	<td> <%=rs.getString(2) %></td>
	<td> <%=rs.getString(3) %></td>
	<td> <%=rs.getString(4) %></td>
	<td> <%=rs.getString(5) %></td>
	<td><a href="delete?id=<%=rs.getInt(1)%>"><button>Delete</button></a></td>
	<td><a href="update?id=<%=rs.getInt(1)%>"><button >Update</button></a></td>
	</tr>
	<%
	}
	%>
	
	</table>



</body>
</html>