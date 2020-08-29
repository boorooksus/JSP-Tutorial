<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>JSTL</title>
</head>
<body>
	<%
		String num = request.getParameter("num");
	%>
	<c:set var="num" value="<%=num %>" />
	<c:choose>
		<c:when test="${num % 2 == 0 }" >
			<c:out value="${num }" /> is even number
		</c:when>
		<c:when test="${num % 2 == 1 }" >
			<c:out value="${num }" /> is odd number
		</c:when>
	<c:otherwise>
		input is not a number
	</c:otherwise>
	</c:choose>			

</body>
</html>
