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
	c:set 태그<br/>
	변수를 선언하는 태그<br/>
	<c:set var="x" value="100"/> <!-- x 변수를 선언하여 100을 할당한다. -->
	<%--
		<c:set var="x" value="100" scope="request" />
		x변수를 선언하고 100을 할당하여 요청 객체에 저장한다.
		<c:set var="x" value="${requestScope.data}" />
		x 변수를 선언하고, requestScope 객체에 있는 data 값을 추출하여 대입한다.
		만약 값이 없으면 빈 상태로 있는다.
		class A { private String name; public void setName ... void getName ... }
		<jsp:useBean id="ap" class="A">
			<c:set target="${ap}" property="name" value="홍길동" />
			특정 객체에 속성 name의 값을 "홍길동"으로 지정한다.
		</jsp:useBean>
	 --%>
	 
	 c:remove 태그<br/>
	 변수를 삭제하는 태그이다.<br/>
	 <c:remove var="x" scope="request" />
	 요청 객체에 저장된 변수를 삭제한다.
</body>
</html>