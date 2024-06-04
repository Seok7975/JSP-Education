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
<jsp:setProperty name = "boardInputValue" property="*" />
이름 : ${boardInputValue.name }<br>
id : ${boardInputValue.id }<br>
password : ${boardInputValue.password }<br>
age : ${boardInputValue.age }<br>
email : ${boardInputValue.email }<br>
</body>
</html>