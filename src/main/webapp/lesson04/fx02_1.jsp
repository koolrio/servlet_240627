<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Used goods user List</title>
</head>
<body>
<%
	MysqlService mysql = MysqlService.getInstance();
	mysql.connect();
	
	String selectQuery = "select * from `used_goods`";
	ResultSet result = mysql.select(selectQuery);
%>
</body>

	<h1>Used goods user list</h1>
	<table>
		<thead>
			<tr>
				<th>id</th>
				<th>title</th>
				<th>description</th>
				<th>price</th>
			</tr>
		</thead>
		<tbody>
<%
	while(result.next()) {
		
%>
			<tr>
				<td><%= result.getInt("id") %></td>
				<td><%= result.getString("title") %></td>
				<td><%= result.getString("description") %></td>
				<td><%= result.getInt("price") %></td>
				<td><a href="/lesson04/fx02_delete?id=<%= result.getInt("id") %>">Delete id</a></td>
<%
	}
%>
			</tr>
		</tbody>
	</table>
</html>