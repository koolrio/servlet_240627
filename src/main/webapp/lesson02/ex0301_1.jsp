<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Print your selection</title>
</head>
<body>
<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String[] foodArr = request.getParameterValues("food");
	String fruit = request.getParameter("fruit");
%>
<table border=1>
	<tr>
		<th>Nickname</th>
		<th><%= nickname %></th>
	</tr>
	<tr>
		<th>Hobby</th>
		<th><%= hobby %></th>
	</tr>
	<tr>
		<th>Favorite animal</th>
		<th><%= animal %></th>
	</tr>
	
	<tr>
		<th>Favorite food</th>
		<th><%
			for (int i = 0; i < foodArr.length; i++){
				
			%>	
				<%= foodArr[i] %>
				
		<%
			}
		%></th>
	</tr>
	<tr>
		<th>Favorite fruit</th>
		<th><%= fruit %></th>
	</tr>
	
</table>
</body>
</html>