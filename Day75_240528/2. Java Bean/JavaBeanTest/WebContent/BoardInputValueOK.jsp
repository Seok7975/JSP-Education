<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
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
<jsp:useBean id="boardInputValue" class="com.superman.www.BoardInputValue" scope="page"></jsp:useBean>
<!-- com.superman.www.BoardInnputValue boardInputValue = new com.superman.www.BoardInputValue(); -->
<jsp:setProperty name = "boardInputValue" property="*" /> <!-- 클래스 property의 이름이 같아야 전체 인풋이 가능-->

<!-- 이름 : <jsp:getProperty name="student" property="name" /><br>
나이 : <jsp:getProperty name="student" property="age" /><br>
학년 : <jsp:getProperty name="student" property="grade" /><br>
학번 : <jsp:getProperty name="student" property="studentNum" /><br> -->

이름 : <%=boardInputValue.getName() %><br>
이름 : <jsp:getProperty property="name" name="boardInputValue"/><br>
id : <%=boardInputValue.getId() %><br>
id : <jsp:getProperty property="id" name="boardInputValue"/><br>
password : <jsp:getProperty property="password" name="boardInputValue"/><br>
age : <jsp:getProperty property="age" name="boardInputValue"/><br>
email : <jsp:getProperty property="email" name="boardInputValue"/><br>
</body>
</html>