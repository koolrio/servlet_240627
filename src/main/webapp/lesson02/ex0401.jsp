<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Control text usage</title>
</head>
<body>
<%
	Map<String, Integer> scoreMap = new HashMap<>();
	scoreMap.put("Korean", 85);
	scoreMap.put("English", 72);
	scoreMap.put("Math", 90);
	scoreMap.put("Science", 100);
%>
	<table border="1">
		<%
		Iterator<String> iterator = scoreMap.keySet().iterator(); 
		while(iterator.hasNext()){
			String key = iterator.next();
		
		%>
		<tr>
			<th>
				<%= key %>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>