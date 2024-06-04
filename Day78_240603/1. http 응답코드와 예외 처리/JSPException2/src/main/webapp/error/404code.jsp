<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>404</title>
</head>
<body>
<%  
	// 현재 페이지가 정상적으로 응답되는 페이지임을 지정
    response.setStatus(HttpServletResponse.SC_OK);
%>
    <h1>404 에러 발생!!!!!</h1>
    <h2>요청하신 문서를 찾지 못했습니다.</h2>
    <h3>문서의 경로를 다시 한 번 확인해주세요!</h3>
</body>
</html>