<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원 정보 조회</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	
	<h3>회원 정보 조회</h3>
	
	<table border="1">
		<tr>
			<th>id</th>
			<th>이름</th>
			<th>성별</th>
			<th>취미</th>
			<th>전화번호</th>
		</tr>
	
	<%
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		
		String sql="SELECT * FROM user";
		pstmt=conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String id = rs.getString("id");
			String name = rs.getString("name");
			String gender = rs.getString("gender");
			String hobby = rs.getString("hobby");
			String tel = rs.getString("tel");
	%>
	
	<tr>
		<td><%=id%></td>
		<td><%=name %></td>
		<td><%=gender %></td>
		<td><%=hobby %></td>
		<td><%=tel %></td>
	</tr>
	<% 
		}
		
		if(rs != null){
			rs.close();
		}
		if(pstmt != null){
			pstmt.close();
		}
		if (conn != null){
			conn.close();
		}
		
	%>
	</table>
</body>
</html>