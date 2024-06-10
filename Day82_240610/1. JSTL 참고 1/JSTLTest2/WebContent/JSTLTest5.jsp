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
	<c:import url="http://localhost:8080/JSTLTest2/ELView.jsp" var="elurl" scope="request"/>
	<%-- 해당 페이지를 elurl라는 변수에 담아서 요청 객체에 저장한다. --%>

</body>
</html>