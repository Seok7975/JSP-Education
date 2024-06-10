<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sql Tag Output!</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>작성일</th>
		</tr>
		<!-- for문을 돌면서 결과를 출력한다. -->
		<c:forEach var="obj" items="${ requestScope.rs.rows }">
			<tr>
				<td><c:out value="${ obj.num }"/></td>
				<td><c:out value="${ obj.name }"/></td>
				<td><c:out value="${ obj.id }"/></td>
				<td><c:out value="${ obj.pw }"/></td>
				<td><c:out value="${ obj.regDate }"/></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>