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
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
	%>
	
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/jspbookdb?serverTimezone=UTC"
		driver="com.mysql.jdbc.Driver" user="root" password="###########################" />
	<sql:update dataSource="${dataSource }" var="resultSet">
		INSERT INTO member(id, name, pwd) VALUES(?, ?, ?)
		<sql:param value="<%=id %>"/>
		<sql:param value="<%=name %>"/>
		<sql:param value="<%=pwd %>"/>
	</sql:update>
	<c:import var="url" url="sql01.jsp" />
	${url }


</body>
</html>
