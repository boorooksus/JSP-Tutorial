<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSTL</title>
</head>
<body>
	<form method="post" action="sql02_process.jsp">
		id: <input type="text" name = "id"><br>
		password: <input type="text" name="pwd"><br>
		name: <input type="text" name="name"> <br>
		<input type="submit">
	</form>

</body>
</html>
