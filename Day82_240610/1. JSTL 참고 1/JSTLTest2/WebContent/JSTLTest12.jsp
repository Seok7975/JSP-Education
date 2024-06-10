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
	<c:url value="http://localhost:8080/JSTLTest2/JSTLTEST1.jsp" 
		var = "input_url" scope="request"/>
		
	<%-- value 속성에 지정된 URL을 저장하는 변수 input_url을 요청 객체에서 선언하고 저장한다. --%>
	${input_url}
</body>
</html>