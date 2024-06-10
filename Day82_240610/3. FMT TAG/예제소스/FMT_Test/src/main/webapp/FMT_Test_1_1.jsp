<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- 전송된 데이터에 대한 한글 처리 -->
<fmt:requestEncoding value="utf-8"/>

<!-- 한국 지역으로 한국어를 지정한다. -->
<fmt:setLocale value="ko_KR"/>
<!--  특정 영역에 표준 시간대를 지정하는 태그 -->
<fmt:setTimeZone value="Asia/Seoul"/>

<c:set var="str" value="Hello Data!" scope="request"/>
<c:set var="str2" value="안녕 데이터!" scope="session"/>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fmt 태그 사용!</title>
</head>
<body>
	Requested Data : ${ param.data }<br/>
	Requested Data2 : ${ param.data2 }<br/><br/>
	<hr/>
	str : <c:out value="${ requestScope.str }" /><br/>
	str2 : <c:out value="${ sessionScope.str2 }" /><br/><br/>	
	<hr/>
		
	<c:set var="date" value="<%= new java.util.Date() %>"/>
	<fmt:formatDate value="${ date }" pattern="yyyy-MM-dd hh:mm a z"/><br/>
	<fmt:timeZone value="US/Eastern">
		<fmt:formatDate value="${ date }" pattern="yyyy-MM-dd hh:mm a z"/><br/> 
	</fmt:timeZone>
	<br/><hr/>	
</body>
</html>