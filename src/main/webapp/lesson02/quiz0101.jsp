<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<%
	int N = 50;
	int sum = 0;
	 for (int i = 0; i <= N; i++){
		 sum += i;
	 }
	 
	 int[] scores = {81, 90, 100, 95, 80};
	 int sum2 = 0;
	 double avg = 0;
	 for (int score: scores){
		 sum2 += score;
	 }
	 avg = sum2/(double)scores.length;
	 
	 List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	 
	 int count = 0;
	 for (String score: scoreList){
		 if (score.equals("O")){
			 count++;
		 }
	 }
	 
	 String birthDay = "20010820";
	 String birthYear = birthDay.substring(0,4);
	 
	 int birth = Integer.parseInt(birthYear);
	 Date now = new Date();
	 SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
	 String thisYear = sdf.format(now);
	 int currentYear = Integer.parseInt(thisYear);
	 
	 int age = currentYear - birth;
	 
	%>
	
	<h3>1부터 <%= N %> 까지의 합은 <%= sum %> 입니다.</h3>
	<h3>평균 점수는 <%= avg %> 입니다.</h3>
	<h3>채점 결과는 <%= count*10 %>점 입니다.</h3>
	<h3><%= birthDay %>의 나이는 <%= age %>세 입니다.</h3>
</body>
</html>