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
	c:import 태그<br/>
	지정한 경로의 페이지를 가져오는 태그이다.<br/>
	<c:import url="http://localhost:8080/JSTLTest2/ELView.jsp" />
	<%-- ELView.jsp 페이지를 현재 위치에 보여준다. --%>
</body>
</html>