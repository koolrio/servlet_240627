<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<%
	int sum=0;
	for(int i = 0; i <= 10; i++) {
		sum += i;
	}
	%>
	
	<strong>Sum</strong>
	<input type="text" value = "<%= sum %>">
	<br>
	<%!
	private int num = 100;
	
	public String getHelloMethod() {
		return "Hello World";
	}
	%>
	
	<%= getHelloMethod() %>
	<br>
	<%= num + 100 %>
</body>
</html>