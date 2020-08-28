<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>DB SQL</title>
</head>
<body>
	<%
		Connection conn = null;
		try{
			String url = "jdbc:mysql://localhost:3306/jspbookdb?serverTimezone=UTC";
			String user = "root";
			String password = "123456";
			
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			out.println("DB connection success");
		} catch(SQLException ex){
			out.println("DB connection is failed<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally{
			if (conn != null){
				conn.close();
			}
		}
		
	%>
	
</body>
</html>
