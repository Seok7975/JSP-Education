<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${pageContext.request.locale.language}"/> 
	<hr/>
	<c:if test="${'ko' eq pageContext.request.locale.language}">
		<fmt:setBundle basename="round25.properties.messages"/>
		<fmt:message key="ksh.msg.name"/> : <input type="text" name="name"/><br/>
		<fmt:message key="ksh.msg.age"/> : <input type="text" name="age"/><br/>
	</c:if>
	
	<c:if test="${'ko' ne pageContext.request.locale.language}">
		<fmt:setBundle basename="round25.properties.en_messages"/>
		<fmt:message key="ksh.msg.name"/> : <input type="text" name="name"/><br/>
		<fmt:message key="ksh.msg.age"/> : <input type="text" name="age"/><br/>
	</c:if>
</body>
</html>