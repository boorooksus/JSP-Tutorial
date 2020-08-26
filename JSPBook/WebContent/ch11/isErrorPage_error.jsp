<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Exception</title>
</head>
<body>
	error occurred<br>
	detail: <%=exception.getClass().getName() %><br>
	error message: <%=exception.getMessage() %><br>
	<%=exception.toString() %>
</body>
</html>
