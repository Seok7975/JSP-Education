<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
EL 표현식
<%	// 값 준비
	pageContext.setAttribute("ne", "오호라!");
%>
<%-- pageContext에서 값 꺼내기 --%>
${ne}
<%-- 예약어를 써서 오류남 --%>
</body>
</html>