<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL TEST</title>
</head>
<body>
	c:catch 태그<br/>
	예외를 처리하는 태그이다. <br/>
	
	<c:catch var="ex">
		<% Integer.parseInt("abcd"); %>
	</c:catch>
	Error : <c:out value="${ex}" />
	<%-- 에러가 발생하면 에러 내용을 변수 ex에 담는다. --%>
</body>
</html>