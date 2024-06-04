<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//application 영역에 데이터를 추가한다.
	application.setAttribute("uri", request.getRequestURI());

	//session 영역에 id와 pw를 추가한다.
	session.setAttribute("id", "hong");
	session.setAttribute("pw", "1234");
	
	String[] subject = new String[]{"국어", "영어", "수학"};
	session.setAttribute("subject", subject);
%>
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
	<!-- request Param으로 name과 addr을 전송한다. -->
	<form method="post" action="TestEL13-2.jsp">
		이름 : <input type="text" name="name"/><br/>
		주소 : <input type="text" name="addr"/><br/>
		선택 : <input type="checkbox" name="language" value="c"/>C언어
			&nbsp;<input type="checkbox" name="language" value="java"/>JAVA언어
			&nbsp;<input type="checkbox" name="language" value="basic"/>BASIC언어<br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>