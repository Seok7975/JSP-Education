<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h3>�� ���� ���</h3>
<c:set var="username1" value="ȫ�浿"/>
<c:set var="username2">�Ӳ���</c:set>
1 ${username1}<br/>
2 ${username2}<br/>

<h3>�⺻ ������ - page</h3>
3 ${pageScope.username1}<br/>
4 ${requestScope.username2}<br/>

<h3>������ ���� - scope �Ӽ�</h3>
<c:set var="username3" scope="request">������</c:set>
5 ${pageScope.username3}<br/>
6 ${requestScope.username3}<br/>

<h3>������ �� ���</h3>
<% pageContext.setAttribute("username4", "�����屺"); %>
7 ���� ��=${username4}<br>
<c:set var="username4" value="�ָԴ���"/>
8 ��� �� = ${username4}<br/>
</body>
</html>