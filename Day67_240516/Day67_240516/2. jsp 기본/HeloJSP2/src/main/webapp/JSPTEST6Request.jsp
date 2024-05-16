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
<form action="JSPTEST6RequestSend.jsp" method="post">
<table>
	<tr>
		<td>이름 :</td><td><input type="text" name="name"></td>
	</tr>
	<tr>
		<td>나이 :</td><td><input type="text" name="age"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit"></td>
	</tr>	
</table>
</form>
</body>
</html>