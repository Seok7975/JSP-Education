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
	<jsp:useBean id="person" class="ch04.com.dto.Person" scope="request" />
	<!-- ch04.com.dto.Person person = new ch04.com.dto.Person(), request영역에 저장-->
	<p>아이디 : <%=person.getId() %></p>
	<p>이 름 : <%=person.getName() %></p>
	
	<%
		person.setId(20182005);
		person.setName("홍길동");
	%>
	<jsp:include page="useBean03.jsp" />
</body>
</html>