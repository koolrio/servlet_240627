<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Addition</title>
</head>
<body>
	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<strong>Name</strong>
			<input type="text" name ="name"><br>
		</p>
		
		<p>
			<strong>Birth</strong>
			<input type="text" name = "yyyymmdd"><br>
		</p>
		
		<p>
			<strong>Introduce</strong>
			<textarea rows="5" cols="50" name="introduce"></textarea><br>
		</p>
		
		<p>
			<strong>email</strong>
			<input type="text" name="email"><br>
		</p>
		
		<p>
			<input type="submit" value="Add">
		</p>
	</form>
</body>
</html>