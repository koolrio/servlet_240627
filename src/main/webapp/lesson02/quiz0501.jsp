<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Length unit conversion</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container">
		<form method="post" action="/lesson02/quiz0501_1.jsp">
			<h1>Length unit conversion</h1>
				<div class="d-flex">
					<input type="text" class="form-control col-2" name="length"><p class="ml-2 mt-2">cm</p>
				</div>
			<div>
				<label>inch <input type="checkbox" name="unit" value="inch"></label>
				<label>yard <input type="checkbox" name="unit" value="yard"></label>
				<label>feet <input type="checkbox" name="unit" value="feet"></label>
				<label>meter <input type="checkbox" name="unit" value="meter"></label>
			</div>
			<input type="submit" class="btn btn-success" value="Conversion">
		</form>
	</div>
</body>
</html>