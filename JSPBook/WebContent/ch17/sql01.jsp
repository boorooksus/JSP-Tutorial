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
	<sql:setDataSource var="dataSource"
		url="jdbc:mysql://localhost:3306/jspbookdb?serverTimezone=UTC"
		driver="com.mysql.jdbc.Driver" user="root" password="#################" />
		
	<sql:query var="resultSet" dataSource="${dataSource }">
		select * from member
	</sql:query>
	
	<table border="1">
		<tr>
			<c:forEach var="columnName" items="${resultSet.columnNames }">
				<th width="100"><c:out value="${columnName }" /></th>
			</c:forEach>
		</tr>
		<c:forEach var="row" items="${resultSet.rowsByIndex }">
			<tr>
				<c:forEach var="column" items="${row }" varStatus="i">
				<td>
					<c:if test="${column != null }">
						<c:out value="${column }" />
					</c:if>
					<c:if test="${column == null }">
						&nbsp;
					</c:if>
				</td>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
