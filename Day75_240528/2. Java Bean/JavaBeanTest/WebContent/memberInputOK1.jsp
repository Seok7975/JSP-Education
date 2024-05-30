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
	<% request.setCharacterEncoding("utf-8"); %>
	 
	<jsp:useBean id="memberDTO" class="com.superman.www.MemberDTO"/>
	<!-- com.superman.www.MemberDTO memberDTO = new com.superman.www.MemberDTO(); -->

	<jsp:setProperty property="name" name="memberDTO" param="name"/>
	<!-- memberDTO.setName(); , param이 name인 애가 value로 들어감.  -->
	<jsp:setProperty property="id" name="memberDTO" param="id"/> <!-- property와 input상자의 이름이 같다면 param 생략 가능-->
	<!-- meberDTO.setId(); , param이 id인 애가 value로 들어감. -->
	이름 : <jsp:getProperty property="name" name="memberDTO"/><br>
	아이디 : <jsp:getProperty property="id" name="memberDTO"/><br>


</body>
</html>