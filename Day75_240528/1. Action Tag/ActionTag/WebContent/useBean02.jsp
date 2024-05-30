<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "bean" class="ch04.com.dto.Calculator" />
	<!-- ch04.com.dto.Calculator bean = new ch04.com.dto.Calculator(); -->
	<%
		int m = bean.process(5);
		out.print("5의 3제곱 : " + m);
	%>
</body>
</html>