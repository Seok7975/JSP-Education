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
<%
	// 쿠키생성
	Cookie cookie = new Cookie("id", "hong");

	// 쿠키저장
	response.addCookie(cookie);
%>
<a href="TestEL14-2.jsp">쿠키 출력 파일</a>
</body>
</html>