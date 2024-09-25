<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Used goods user List</title>
</head>
<body>
	<form method = "post" action="/lesson04/fx02_insert">
		<p>
			<strong>sellerId</strong>
			<input type="text" name="sellerId"><br>
		</p>
		<p>
			<strong>title</strong>
			<input type="text" name="title"><br>
		</p>
		<p>
			<strong>description</strong>
			<input type="text" name="description"><br>
		</p>
		<p>
			<strong>price</strong>
			<input type="text" name="price"><br>
		</p>
		<p>
			<input type="submit" value="Add to used goods">
		</p>
	</form>
</body>
</html>