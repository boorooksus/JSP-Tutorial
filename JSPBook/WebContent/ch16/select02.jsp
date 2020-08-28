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
	
	<table width="300" border="1">
		<tr>
			<th>id</th>
			<th>password</th>
			<th>name</th>
		</tr>
	
	<%
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		
		try{
			String sql="SELECT * FROM member";
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String id = rs.getString("id");
				String pwd = rs.getString("pwd");
				String name = rs.getString("name");
	%>
	
	<tr>
		<td><%=id%></td>
		<td><%=pwd %></td>
		<td><%=name %></td>
	</tr>
	<% 
			}
		} catch(SQLException ex){
			out.println("Data insert failed<br>");
			out.println("SQLException: " + ex.getMessage());
		} finally{
			if(rs != null){
				rs.close();
			}
			if(pstmt != null){
				pstmt.close();
			}
			if (conn != null){
				conn.close();
			}
		}
		
	%>
	</table>
</body>
</html>
