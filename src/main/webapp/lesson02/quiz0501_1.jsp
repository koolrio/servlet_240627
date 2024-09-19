<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Length Conversion</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
	<h1>Length Conversion Result</h1>
		<%
			int length = Integer.parseInt(request.getParameter("length"));
			String[] units = request.getParameterValues("unit");
			double inchResult = 0;
			double yardResult = 0;
			double feetResult = 0;
			double meterResult = 0;
			
			for (String unit: units){
				if(unit.equals("inch")){
					inchResult = (double)length * 0.393701;
				} else if (unit.equals("yard")){
					yardResult = (double)length * 0.010936; 
				} else if (unit.equals("feet")){
					feetResult = (double)length * 0.032808;
				} else if (unit.equals("meter")){
					meterResult = (double)length * 0.01; 
				}
			}
			

		%>
		<h1><%= length %> cm</h1><hr>
		<% if(inchResult > 0) { %>
		<h1><%= inchResult %> in.</h1>
		<% 
		}
		%>		
		<% if(yardResult > 0) { %>
		<h1><%= yardResult %> yd.</h1>
		<% 
		}
		%>		
		<% if(feetResult > 0) { %>
		<h1><%= feetResult %> ft.</h1>
		<% 
		}
		%>		
		<% if(meterResult > 0) { %>		
		<h1><%= meterResult %> m</h1>
		<% 
		}
		%>		
		
	</div>
</body>
</html>