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
<c:set var='varName' value='varValue'/>
<c:out value='${varName}'/><br>
${varName }<br>
<c:remove var="varName" />
<c:out value="${varName }"/><br>
${varName }
<c:catch var="error">
<%= 10/0 %>
</c:catch>
<c:out value="${error.message }" /><br>
<c:if test="${1+2==3}">
1+2=3<br>
</c:if>
<c:if test="${1+2!=3}">
1+2 != 3<br>
</c:if>
<c:forEach var="i" begin="0" end="30" step="3">
${i }&nbsp;
</c:forEach>
</body>
</html>