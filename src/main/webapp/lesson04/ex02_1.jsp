<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
<%
	MysqlService mysql = MysqlService.getInstance();
	mysql.connect();
	
	String selectQuery = "select * from `new_user`";
	ResultSet result = mysql.select(selectQuery);
%>

	<h1>User List</h1>
	<table border="1">
		<thead>
			<tr>
				<th>No.</th>
				<th>Name</th>
				<th>Birth</th>
				<th>Introduce</th>
				<th>email</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
		<%
			while(result.next()) {
		%>
			<tr>
				<td><%= result.getInt("id") %></td>
				<td><%= result.getString("name") %></td>
				<td><%= result.getString("yyyymmdd") %></td>
				<td><%= result.getString("introduce") %></td>
				<td><%= result.getString("email") %></td>
				<td><a href="/lesson04/ex02_delete?id=<%= result.getInt("id")%>">Delete ID</a></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
<%
	mysql.disconnect();
%>
</body>
</html>