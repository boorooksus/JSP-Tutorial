<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page errorPage="errorPage_error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Exception</title>
</head>
<body>
	name param: <%=request.getParameter("name").toUpperCase() %>
</body>
</html>
