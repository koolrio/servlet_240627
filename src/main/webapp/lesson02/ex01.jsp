<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<h1>JSP</h1>
	<!-- HTML 주석: 소스 보기에서 보임 -->
	<%-- JSP 주석: 소스 보기에서 안 보임 --%>
	
	<%
		// 자바 문법 시작
		// scriptlet
		
		int sum = 0;
		for (int i = 1 ; i <= 10 ;i++){
			sum += i;
		}
	%>
	
	<b>합계: </b>
	<input type = "text" value = "<%= sum %>">
	
	<hr>
	
	
	<%!
		// 선언문 - 클래스 같은 느낌
		
		// 필드 
		int num = 100;
	
		// 메소드
		public String getHelloWorld(){
			return "hello world";
		}
	%>
	
	
	<%= num  + 200 %>
	<br>
	
	<%= getHelloWorld() %>
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	%>
	
	<%!

		public int sum (int n){
		int total = 0;
		for(int i = 1; i <= n; i++){
			total += i;
		}
		return total;
	}
	%>
	
	<%
		int n  = 10;
		int sumResult = sum(n);
		System.out.println(sumResult);
	%>
	
	<%
		int[] scores = {81, 90, 100, 95, 80};
	
		int sum2 = 0;
		int avg = 0;
		for(int score: scores){
			sum2 += score;
		}
		avg = sum2/scores.length;
		System.out.println(avg);
	%>
</body>
</html>