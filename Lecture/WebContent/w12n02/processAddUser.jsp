<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>db에 회원 등록</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String hobby = request.getParameter("hobby");
		String tel = request.getParameter("tel");
		
		if(gender.equalsIgnoreCase("man")){
			gender = "남자";
		} else{
			gender = "여자";
		}
		
		PreparedStatement pstmt = null;
		
		try{
			// db에 정보 등록
			String sql="INSERT INTO user(name, gender, hobby, tel) VALUES(?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, gender);
			pstmt.setString(3, hobby);
			pstmt.setString(4, tel);
			pstmt.executeUpdate();
			

		} catch(SQLException ex){
			// 오류가 발생한경우(이름을 입력 안하면 오류 발생)
			out.println("데이터 입력 실패. 입력을 다시 한번 확인해주세요");
		} finally{
			if(pstmt != null){
				pstmt.close();
			}
			if (conn != null){
				conn.close();
			}
			
			// 다시 정보 입력 페이지로 이동
			response.sendRedirect("addUser.jsp");
		}
		
	%>
</body>
</html>