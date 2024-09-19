<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
	<strong>id</strong>
	<%= request.getParameter("id") %>
	<br>
	<strong>name</strong>
	<%= request.getParameter("name") %>
	<br>
	<strong>age</strong>
	<%= request.getParameter("age") %>
	<br>
</body>
</html>