<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL TEST</title>
</head>
<body>
	c:redirect 태그<br/>
	특정 위치로 이동(sendRedirect)하게 하는 태그이다.
	
	<c:redirect url="http://localhost:8080/JSTLTest2/JSTLTest8_1.jsp"/>
	<%-- url 속성의 위치로 이동한다. --%>
</body>
</html>