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
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		
		PreparedStatement pstmt = null;
		
		try{
			String sql="INSERT INTO member(id, pwd, name) VALUES(?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			pstmt.setString(3, name);
			pstmt.executeUpdate();
			
			out.println("Data insert success");
		} catch(SQLException ex){
			out.println("Data insert failed<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally{
			if(pstmt != null){
				pstmt.close();
			}
			if (conn != null){
				conn.close();
			}
		}
		
	%>
	
</body>
</html>
