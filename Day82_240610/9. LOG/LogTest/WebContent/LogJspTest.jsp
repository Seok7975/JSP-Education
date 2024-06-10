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
	log("JSP 로그를 남겨봅시다.");
	try{
		int num = 10 / 0;
	} catch(ArithmeticException e){
		log("연산오류가 발생했습니다.", e);
	}
	// C:\apache-tomcat-9.0.38\logs 에 저장
%>
</body>
</html>