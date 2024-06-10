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
	c:url 태그<br/>
	URL 주소를 저장하는 태그이다. <import>태그는 페이지를 저장하므로 서로 다르다.<br/>
	<c:url value="http://localhost:8080/JSTLTest2/Round25_Page_Input.jsp" />
	<%--value 속성의 주소를 그대로 화면에 출력한다. <c:out value="http://..."/>와 동일한 결과를 보인다. --%>
</body>
</html>