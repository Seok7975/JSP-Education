<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL TEST</title>
</head>
<body>
	c:choose, c:when, c:otherwise 태그<br/>

	<c:set var="x" value="ab" scope="request" />
	<%-- <c:set var="x" value="10" scope="request" /> --%>
	<c:catch var="ex2">
		<c:choose>
			<c:when test="${requestScope.x % 2 == 0 }">
				<c:out value="짝수입니다. "/><br/><br/>
			</c:when>
			<c:when test="${requestScope.x % 2 == 1 }">
				<c:out value="홀수입니다." /><br/><br/>
			</c:when>
			<c:otherwise>
					<c:out value="수가 아닙니다.[이 부분은 실행 안되고 에러 걸림]" /><br/><br/>
			</c:otherwise>
		</c:choose>
	</c:catch>
	<c:if test="${not empty(ex2) }">
		exception2 : <c:out value="${ex2}" /><br/><br/>
	</c:if>
	
	<%--
		<c:out> 태그로 변수를 선언하는 부분을 숫자로 테스트해 보고 문자열로도 테스트해서 결과를
		확인하면 숫자일 때는 홀수와 짝수가 출력되고 숫자가 아닐 때는 에러가 발생한다.
	 --%>
</body>
</html>