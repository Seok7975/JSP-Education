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
	<jsp:useBean id="person" class="ch04.com.dto.Person" scope="request"/>
	<!-- ch04.com.dto.Person person = new ch04.com.dto.Person();-->
	<p> 아이디 : <jsp:getProperty property="id" name="person"/>  <!-- name="person"은 id="person"을 의미-->
	<!-- person.getId()-->
	<p> 이 름 : <jsp:getProperty property="name" name="person"/>
</body>
</html>

<%--
	getProperty 액션 태그의 속성
	속성			설명
	name		useBean 태그에 id 속성 값으로 설정된 자바빈즈를 식별하기 위한 이름이다.
	property	자바빈즈의 프로퍼티 이름이다. 만약 프로퍼티 이름에 "*"를 사용하면 모든 요청
				파라미터가 자바빈즈 프로퍼티의 getter() 메소드에 전달됨을 의미한다.
--%>