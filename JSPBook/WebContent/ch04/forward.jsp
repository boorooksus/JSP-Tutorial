<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>action tag - forward</title>
</head>
<body>
	<h3>current page: first</h3>
	<jsp:forward page="second.jsp" />
	<p>=====first.jsp content=====</p>
</body>
</html>