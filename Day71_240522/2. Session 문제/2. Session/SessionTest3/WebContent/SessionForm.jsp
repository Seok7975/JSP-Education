<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<%
	String id = (String)session.getAttribute("id");
	if(id==null)
	{
%>
<form method="post" action="SessionFormOK.jsp">
아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="password"><br>
<input type="submit" value="로그인">
<%
	}
	else{
%>
<%=id %>님 환영합니다.<br>
<%= session.getMaxInactiveInterval() %>
<!-- 세션의 유효시간을 얻어오기 리턴된 단위는 초-->
<%
	}
%>
</form>
</body>
</html>