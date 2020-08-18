<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP BBS</title>
</head>
<body>
	<a class="navbar-brand" href="main.jsp">JSP BBS</a>
	<ul class="nav navbar-nav">
		<li><a href="main.jsp">메인</a></li>
		<li><a href="bbs.jsp">게시판</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown">
			<a href="#" class="dropdown-toggle">접속하기<span class="caret"></span></a>
			<ul class="dropdown-menu">
				<li class="active"><a href="login.jsp">로그인</a></li>
				<li><a href="join.jsp">회원가입</a></li>
			</ul>
		</li>
	</ul>
	
	<form method="post" action="loginAction.jsp">
		<h3 style="text-align:center;">로그인화면</h3>
		<div class="form-group">
			<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
			
		</div>
		<div class="form-group">
			<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
			
		</div>
		<input type="submit" value="로그인">
	</form>
</body>
</html>