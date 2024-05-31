<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="com.superman.ex.Student" scope="page"/>
<!-- com.superman.ex.Student student = new com.superman.ex.Student(); -->
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
<h2>학생정보</h2>
<jsp:setProperty name="student" property="name" value="홍길동"/> <!-- name이 의미하는건 id -->
<!-- student.setName("홍길동"); -->
<jsp:setProperty name="student" property="age" value="10"/>
<!-- student.setAge(10);-->
<jsp:setProperty name="student" property="grade" value="3"/>
<!-- student.setGrade(3);-->
<jsp:setProperty name="student" property="studentNum" value="28"/>
<!-- student.setStudentNum(28)-->

이름 : <jsp:getProperty name="student" property="name" /><br>
<!-- student.getName(); -->
나이 : <jsp:getProperty name="student" property="age" /><br> <!--10-->
학년 : <jsp:getProperty name="student" property="grade" /><br> <!--3-->
학번 : <jsp:getProperty name="student" property="studentNum" /><br> <!--28-->
</body>
</html>