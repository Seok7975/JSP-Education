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
	c:if 태그<br/>
	if 문을 처리하는 태그이다.<br/>
	
	<c:set var="x" value="10" scope="request" />
	<c:if test="${not empty(requestScope.x) and (requestScope.x % 2 == 0) }" 
		var="res" scope="request">
	RESULT = <c:out value="${requestScope.res}" />
	</c:if>
	<%--
		requestScope 객체의 x 값이 비어 있지 않고 짝수이면 "RESULT = true"가 출력된다.
		var 속성으로 선언한 변수에 test 속성의 조건에 의한 결과가 저장된다.
	 --%>
</body>
</html>