<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- 세션 영역에 dataSource 객체를 ds라는 이름으로 생성해 둔다. -->
<!-- 
<sql:setDataSource var="ds" scope="session"
	driver="com.mysql.cj.jdbc.Driver" 
	url="jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC"
	user="root" password="1234"/>    
 -->
 <sql:setDataSource var="ds" dataSource="jdbc/testdb" scope="session"/>
 <!-- 
 	sql:setDataSource 태그
 	데이터베이스와 통신하는 DataSource 객체를 생성하는 태그이다.
 	
 	DataSource 객체를 ds라는 이름으로 생성하고 세션 객체에 저장한다.
  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Sql Tag Input!</title>
</head>
<body>
	<form name="reg_form" method="post" action="SQL_TAG_Test_1_1.jsp">
		이름 : <input type="text" name="name" size="20"/><br/>
		아뒤 : <input type="text" name="id" size="20"/><br/>
		비번 : <input type="password" name="pw" size="21"/><br/>
		<input type="submit" value="저장"/>
	</form>		
</body>
</html>