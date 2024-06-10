<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<!-- 
	<fmt:bundle basename="round25.properties.messages">
		<fmt:message key="ksh.msg.hello"/>
	</fmt:bundle>
 -->
 <!--  
	<fmt:bundle basename="round25.properties.messages" prefix="ksh.msg.">
		<fmt:message key="hello"/>
	</fmt:bundle>
-->

<!-- 
	메시지 처리 태그
	fmt:bundle : 태그 몸체에서 사용할 리소스 번들을 지정한다.
	fmt:message : 메시지를 출력한다.
	fmt:setBundle : 특정 메시지 번들을 사용할 수 있도록 로딩한다.
 -->
  
	<fmt:bundle basename="round25.properties.messages" prefix="ksh.msg.">
		<fmt:message key="hello">
			<fmt:param value="홍길동"/>
		</fmt:message>
		<br/>
		<fmt:message key="name"/>
	</fmt:bundle>


	<hr/>
	<fmt:setBundle basename="round25.properties.messages"/>
	<fmt:message key="ksh.msg.name"/> : <input type="text" name="name"/><br/>
	<fmt:message key="ksh.msg.age"/> : <input type="text" name="age"/><br/>
	<hr/>
	<fmt:setBundle basename="round25.properties.en_messages"/>
	<fmt:message key="ksh.msg.name"/> : <input type="text" name="name"/><br/>
	<fmt:message key="ksh.msg.age"/> : <input type="text" name="age"/><br/>
<!--	
-->
</body>
</html>