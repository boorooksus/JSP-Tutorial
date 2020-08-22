<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int x = 0;
	%>
	<p> x = <%=x %></p>
	<p> Today's date: <%= new java.util.Date() %></p>
</body>
</html>