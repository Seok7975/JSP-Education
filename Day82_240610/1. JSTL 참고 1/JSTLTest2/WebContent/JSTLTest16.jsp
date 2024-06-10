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
	c:forEach 태그<br/>
	for 문처럼 반복해서 실행하며 결과를 표시하는 태그이다.<br/>
	구구단 9단을 출력하는 for 문이다.<br/>
	
	<c:forEach var="i" begin="1" end="9" step="1">
		9 * <c:out value="${i}" /> = <c:out value="${9*i }" /><br/>
	</c:forEach>
</body>
</html>