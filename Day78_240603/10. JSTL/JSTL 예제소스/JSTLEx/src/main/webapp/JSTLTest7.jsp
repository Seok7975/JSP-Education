<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% pageContext.setAttribute("nameList", new String[] {"ȫ�浿", "�Ӳ���", "������"}); %>
<ul>
<c:forEach var="name" items="${nameList}">
	<li>${name}</li>
</c:forEach>
</ul>
</body>
</html>