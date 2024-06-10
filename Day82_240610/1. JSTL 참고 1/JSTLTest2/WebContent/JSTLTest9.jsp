<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL TEST</title>
</head>
<body>
	<c:redirect url="/JSTLTest8_1.jsp" context="/JSTLTest2"/>
	<%-- 컨텍스트 루트의 URL 위치로 이동한다. --%>
</body>
</html>