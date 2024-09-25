<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hong carrat market</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
.wrap {heignt: 1200px;}
header {height: 150px;}
nav {height: 70px;}
.contents {min-height: 500px;}
.cell {min-height: 250px;}
</style>
</head>
<body>
	<div id = "wrap">
		<header class="bg-warning align-items-center justify-content-center">
			<h1 class="text-center font-weight-bold text-white">Hong carrot</h1>
		</header>
		<nav class="bg-warning">		
			<div class="d-flex align-items-center text-white">
				<ul class="nav nav-fill w-100">
					<li class="nav-item"><a href="/lesson04/quiz03.jsp" class="nav-link font-weight-bold text-white">List</a></li>
					<li class="nav-item"><a href="/lesson04/quiz03_insert" class="nav-link font-weight-bold text-white">Product listup</a></li>
					<li class="nav-item"><a href="/lesson04/quiz03_mypage" class="nav-link font-weight-bold text-white">mypage</a></li>
				</ul>
			</div>
		</nav>
		<section class="contents">
			<div class="container">
				<div class="row">
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	
	String selectQuery = "select A.nickname, B.price, B.title, B.productUrl from `seller` as A join `used_goods` as B on A.`id` = B.`sellerId`";
	ResultSet result = mysqlService.select(selectQuery);
	
	while(result.next()){
		
%>	
			<div class="cell">
				<div class="border border-warning p-3">
					<img src="<%=result.getString("productUrl")%>" alt="product photo" width="150" height="150">
					<div class="font-weight-bold"><%= result.getString("title") %></div>
					<div class="text-secondary"><%= result.getString("price") %>KRW</div>
					<div class="text-danger"><%= result.getString("nickname") %></div>
				</div>		
			</div>
<%		
	}
	mysqlService.disconnect();
%>
				</div>
			</div>
		</section>
	</div>
</body>
</html>