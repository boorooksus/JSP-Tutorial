<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>validation</title>
</head>
<body>
	<h3>Success!</h3>
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
	%>
	
	<p>id: <%=id %></p>
	<p>pwd: <%= pwd %></p>

</body>
</html>
