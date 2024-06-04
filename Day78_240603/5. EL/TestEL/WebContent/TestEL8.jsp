<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
EL 표현식<br/>
<% // 값 준비
pageContext.setAttribute("title", "EL 연산자!");
%>

\${empty pageScope.title} = ${empty pageScope.title}<br/>
\${empty pageScope.title2} = ${empty pageScope.title2}<br/>

\${empty title} = ${empty title}<br/>
\${empty title2} = ${empty title2}<br/>
</body>
</html>