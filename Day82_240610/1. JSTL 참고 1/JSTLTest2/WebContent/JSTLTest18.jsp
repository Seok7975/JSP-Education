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
	c:forTokens 태그
	특정 구분자를 기준으로 데이터를 분할하여 반복해서 수행하는 태그이다.<br/>
	<%--
		구분자가 있는 데이터를 해당 구분자로 분할하여 반복해서 수행하는 구문이다. 구분자가 반드시
		 ','일 필요는 없다.
	 --%>
	
	<c:set var="delim_str" value="홍길동, 홍길순, 슈퍼맨, 원더우먼" scope="request"/>
	<c:forTokens var="obj" items="${delim_str}" delims="," varStatus="pos">
		<c:out value="${pos.count}" /> : <c:out value="${obj}" /><br/>
	</c:forTokens>
</body>
</html>