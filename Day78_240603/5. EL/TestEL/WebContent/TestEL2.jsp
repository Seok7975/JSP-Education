<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% // 값 준비
	pageContext.setAttribute("scores", new int[] {90, 80, 70, 100});
%>
<%-- 배열에서 인덱스 2의 값 꺼내기 --%>
${pageScope.scores[2]}
<%-- 배열에서 인덱스 2의 값 꺼내기 --%>
${scores[2]}
</body>
</html>