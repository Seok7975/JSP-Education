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
<c:if test="${10 > 20 }" var = "result1">
10�� 20���� ũ��. <br/>
</c:if>
${result1}<br/>

<c:if test="${10 < 20 }" var = "result2">
10�� 20���� �۴�.<br/>
</c:if>
${result2}<br/>
</body>
</html>