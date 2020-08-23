<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Web market</title>
</head>
<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "navbar-header">
			<a class = "navbar-brand" href="./welcome.jsp">Home</a>
		</div>
	</nav>
	<%! 
		String greeting = "Welcome!";
		String tagline = "This is Web Market";
	%>
	<div class = "jumbotron">
		<div class = "container">
			<h2 class = "display-3">
				<%= greeting %>
			</h2>
		</div>
	</div>
	
	<div class = "container">
		<h3>
			<%= tagline %>
		</h3>
	</div>
	
	<footer class = "container">
		<p>&copy; WebMarket</p>
	</footer>
	
</body>
</html>