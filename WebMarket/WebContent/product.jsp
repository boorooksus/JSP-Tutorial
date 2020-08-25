<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-3">상품 정보</h2>
		</div>
	</div>
	<%	
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
	%>
	<div class = "container">
		<div class="row">
			<div class="col-md-5">
				<img src="./resources/images/<%=product.getFilename() %>" style="width: 100%" />
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname() %></h3>
				<p><%=product.getDescription() %></p>
				<p><b>상품 코드: </b><span class="badge badge-danger"><%= product.getProductId() %></span>
				<p><%=product.getUnitPrice() %>원</p>
				<p> <a href="#" class="btn btn-info">상품 주문 &raquo;</a>
				<p><a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;></a></p>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>