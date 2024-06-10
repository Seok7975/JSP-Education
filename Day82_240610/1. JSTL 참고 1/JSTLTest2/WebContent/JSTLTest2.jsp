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
	<c:set var="x" value="100" scope="request"/> 
	c:out 태그<br/>
	화면으로 데이터를 출력하는 태그이다.<br/>
	<c:out value="홍길동" /><br/>
	<c:out value="${requestScope.x }" default="해당 속성이 존재하지 않습니다." /><br/>
	requestScope 객체에서 x를 찾아 출력하는데 만약 x라는 속성이 없으면 default 속성에 있는 값을 화면에 출력한다.<br/>
	<c:out value="<h2>JAVA</h2>" escapeXml="false" /><br/>
	<!-- <h2> 태그가 동작하여 JAVA가 헤더 글씨체로 표시된다. -->
	<c:out value="<h2>JAVA</h2>" escapeXml="true" /><br/>
	
	<%--
		c:param 태그
		<import>, <url>, <redirect> 태그를 사용할 때 데이터를 전달하는 매개 변수를 지정하는 태그이다.
		<c:param name="str" value="데이터" />
		str이라는 매개 변수에 "데이터"라는 값을 저장하여 전달한다.
	 --%>
	
</body>
</html>