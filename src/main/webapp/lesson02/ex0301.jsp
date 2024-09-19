<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method form tag</title>
</head>
<body>
	<form method="post" action="/lesson02/ex0301_1.jsp">
		1. What is your nickname? <input type="text" name="nickname"><br><br>
		2. What is your hobby? <input type="text" name="hobby"><br><br>
		3. What is your favorite between cat and dog?
		<label for = "dog">Dog<input type="radio" name="animal" id="dog" value="dog"></label>
		<label for = "cat">Cat<input type="radio" name="animal" id="cat" value="cat"></label><br><br>
		4. Please, select every food you like.
		<label for ="mintchoco">Mint Choco<input type="checkbox" name="food" id="mintchoco" value="Mint Choco"></label>
		<label for ="pizza">Hawaian Pizza<input type="checkbox" name="food" id="pizza" value="Hawaian Pizza"></label>
		<label for ="pupa">Pupa<input type="checkbox" name="food" id="pupa" value="Pupa"></label><br><br>
		5. Please, select your favorite fruits.
		<select name="fruit">
			<option value="apple">Apple</option>
			<option value="peach">Peach</option>
			<option value="strawberry">Strawberry</option>
			<option value="grape">Grape</option>
		</select>
		<br><br>
		
		<button type="submit">Submit</button>
	</form>

</body>
</html>