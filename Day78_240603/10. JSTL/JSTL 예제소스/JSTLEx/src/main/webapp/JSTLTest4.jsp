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
<h3>�����ҿ� ����� �� ����</h3>
<% pageContext.setAttribute("username1", "ȫ�浿"); %>
${username1}<br/>
<c:remove var="username1"/>
${username1}<br/>
</body>
</html>