<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Internationalization</title>
</head>
<body>
<fmt:formatNumber value="123456789" /><br>
<fmt:formatNumber value="12.3456789" type="percent"/><br>
<fmt:formatNumber value="12345.6789" minIntegerDigits="2" minFractionDigits="1"/><br>
<fmt:formatNumber value="12345.6789" pattern="#,#00.0#"/><br>
</body>
</html>
