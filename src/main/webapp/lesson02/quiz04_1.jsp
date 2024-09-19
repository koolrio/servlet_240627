<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
			<%
				int num1 = Integer.parseInt(request.getParameter("number1"));
				int num2 = Integer.parseInt(request.getParameter("number2"));		
				String operator = request.getParameter("operator");
				long result = 0;
				String operatorSymbol = null;
				
				if (operator.equals("plus")) {
					result = num1 + num2;
					operatorSymbol ="+";
				} else if (operator.equals("minus")) {
					result = num1 - num2;
					operatorSymbol ="-";
				} else if (operator.equals("multiple")) {
					result = num1 * num2;
					operatorSymbol ="*";
				} else if (operator.equals("divide")) {
					if(num2 != 0){
					result = num1 / num2;
					operatorSymbol ="/";						
					} else {
						operatorSymbol="Error";
					}
				}
				
				
			%>
	<div class="container">
		<h1>Calculation Result</h1>
			<div class="display-4">
			<%= num1 %><%= operatorSymbol %><%= num2 %><span>=</span><span class="text-primary"><%= result %></span>
			
			
			</div>
	</div>
</body>
</html>