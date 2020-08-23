<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="org.joda.time.DateTime" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
   <%
   DateTime dt = new DateTime();
   int hrs = dt.getHourOfDay();
   int min = dt.getMinuteOfHour();
   int sec = dt.getSecondOfMinute();
   
   String CT = hrs + ":" + min;
   out.println(CT);

   %>
   
</body>
</html>