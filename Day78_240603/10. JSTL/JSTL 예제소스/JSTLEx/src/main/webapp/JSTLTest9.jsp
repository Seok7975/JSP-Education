<%@page import="java.util.ArrayList"%>
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
<%
ArrayList<String> nameList3 = new ArrayList<String>();
nameList3.add("ȫ�浿");
nameList3.add("�Ӳ���");
nameList3.add("������");
nameList3.add("�ָԴ���");
nameList3.add("�����屺");
pageContext.setAttribute("nameList3", nameList3);
%>
<ul>
<c:forEach var="name" items="${nameList3}">
	<li>${name}</li>
</c:forEach>
</ul>
</body>
</html>