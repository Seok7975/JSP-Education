<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- Map ���� -->
<c:set var="mapTest" value="<%=new HashMap<String, String>()%>" />

<!-- Map �� �� �ֱ� -->
<c:set target="${mapTest}" property="key1" value="value1" />
<c:set target="${mapTest}" property="key2" value="value2" />

${mapTest.key1}<!-- value1 �� ��µ� -->
${mapTest.key2}<!-- value2 �� ��µ� -->
<c:forEach var="mapTest" items="${mapTest}">
${mapTest.key}<!--  key1, key2 ... �� ��µ� -->
${mapTest.value}<!--  value1, value2 ... �� ��µ� -->
</c:forEach>
</body>
</html>