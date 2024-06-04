<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<%
	// 현재 페이지가 정상적으로 응답되는 페이지임을 지정
	// 코드 생략 시 웹 브라우저가 자체적으로 제공하는 에러 페이지 출력
    response.setStatus(HttpServletResponse.SC_OK);
%>
    <h1>500 에러 발생!!</h1>
    <h2>요청 문서에 문법적인 에러가 있습니다!</h2>
    <h3>프로그램의 코드를 확인해 주세요!</h3>
    <h3>어떤 수를 0으로 나누면 안됩니다!</h3>
</body>
</html>