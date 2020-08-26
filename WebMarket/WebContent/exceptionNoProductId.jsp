<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<script src="./resources/js/validation.js"></script>
<title>상품 아이디 오류</title>
</head>
<body>
	<jsp:include page="menu.jsp">
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">No Product</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL() %>?<%=request.getQueryString() %></p>
		<p><a href="products.jsp" class="btn btn-secondary">상품 목록&raquo;</a>
	</div>
</body>
</html>
