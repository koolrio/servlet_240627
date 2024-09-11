<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%
			String type = request.getParameter("type");
			SimpleDateFormat sdf = null;
			
			if(type.equals("time")){ // 시간
				 sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");				
			} else { // 날짜
				 sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 M월 dd일 입니다.");				
			}
			String result = sdf.format(new Date());				
	%>
	<div class="container">
		<div class="display-4"><%= result %></div>
	</div>
</body>
</html>