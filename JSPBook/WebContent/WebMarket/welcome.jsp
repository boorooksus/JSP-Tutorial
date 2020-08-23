<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>Web market</title>
</head>
<body>
	<!-- <nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class = "navbar-header">
			<a class = "navbar-brand" href="./welcome.jsp">Home</a>
		</div>
	</nav> -->
	<%@ include file="menu.jsp" %>
	<%! 
		String greeting = "Welcome!";
		String tagline = "This is Web Market";
	%>
	<div class = "jumbotron">
		<div class = "container">
			<h2 class = "display-3">
				<%= greeting %>
			</h2>
		</div>
	</div>
	
	<div class = "container">
		<h3>
			<%= tagline %>
		</h3>
		<%
			//DateTime day = new DateTime();
			Calendar day = Calendar.getInstance();
			String am_pm;
			int hrs = day.get(Calendar.HOUR);
			int min = day.get(Calendar.MINUTE);
			int sec = day.get(Calendar.SECOND);
			//int hrs = day.getHourOfDay();
			//int min = day.getMinuteOfDay();
			//int sec = day.getSecondOfDay();
			if (hrs / 12 == 0){
				am_pm = "AM";
			}
			else{
				am_pm = "pm";
				hrs -= 12;
			}
			String CT = hrs + ":" + min + ":" + sec + " " + am_pm;
			out.println("현재 시각: " + CT + "\n");
		%>
	</div>
	<%@ include file="footer.jsp" %>	
</body>
</html>