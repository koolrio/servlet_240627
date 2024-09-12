<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
</head>
<body>

		<%
		int length = Integer.parseInt(request.getParameter("length"));
		String[] units = request.getParameterValues("unit");		
		%>
		
		<div class="container">
			<h1>길이 변환 결과</h1>
			<h3><%= length %>cm</h3>
			<hr>
			<h2>
				<%
					for (int i = 0; i <units.length; i++){
						if(units[i].equals("inch")){
							double inchLength = (double)length*0.393701;
							out.println(inchLength + "in<br>");
						} else if(units[i].equals("yard")){
							double yardLength = (double)length*0.010936;
							out.println(yardLength + "yard<br>");							
						} else if(units[i].equals("feet")){
							double feetLength = (double)length*0.032808;
							out.println(feetLength + "feet<br>");								
						} else if(units[i].equals("meter")){
							double meterLength = (double)length*0.01;
							out.println(meterLength + "meter<br>");								
							
						}
					}
				%>
			</h2>
		</div>
		
		<%
		
		for (String unit: units){
			if(unit.equals("inch")) {
				double inchLength = (double)length*0.393701;
				out.print(inchLength);
			} else if(unit.equals("yard")){
				double yardLength = (double)length*0.010936;
				out.print(yardLength);
			} else if(unit.equals("feet")){
				double ftLength = (double)length*0.032808;
				out.print(ftLength);
			} else if(unit.equals("meter")){
				double mLength = (double)length*0.01;
				out.print(mLength);
			}
		}
	
		%>
		
</body>
</html>