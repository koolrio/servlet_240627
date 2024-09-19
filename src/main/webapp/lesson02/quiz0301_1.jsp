<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Calculation</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<%
	int weight = Integer.parseInt(request.getParameter("weight"));
	int height = Integer.parseInt(request.getParameter("height"));
	double bmiNum = (double)weight/((height/100.0) * (height/100.0));
	String result = null;
%>
<%
		if(bmiNum <= 20){
			result = "underWeigth";
		} else if (bmiNum <= 25){
			result = "normalWeight";
		} else if (bmiNum <= 30) {
			result = "overWeight";
		} else {
			result = "obese";
		}
	%>
	<div class="container">
		<h1>BMI Calculation Result</h1>
		<div class="display-4">Your BMI result is <span class="text-info"><%= result %></span></div>
		<div>BMI: <%= bmiNum %></div>
	</div>
</body>
</html>