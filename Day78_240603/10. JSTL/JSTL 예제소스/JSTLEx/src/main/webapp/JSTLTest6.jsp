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
<c:set var="userid" value="admin" />
<c:choose>
	<c:when test="${userid == 'hong'}">
	ȫ�浿�� �ݰ����ϴ�.
	</c:when>
	<c:when test="${userid == 'lim'}">
	�Ӳ����� �ݰ����ϴ�.
	</c:when>
	<c:when test="${userid == 'admin'}">	
	������ ���� �������Դϴ�.
	</c:when>
	<c:otherwise>
	��ϵ��� ���� ������Դϴ�.
	</c:otherwise>
</c:choose>
</body>
</html>