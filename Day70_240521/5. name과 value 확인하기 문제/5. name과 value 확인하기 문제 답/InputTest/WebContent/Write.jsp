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
<form action="WriteOK.jsp" method="post">
<table border="1">
	<tr>
		<td>제목</td><td><input type="text" name="title" required></td>
	</tr>
	<tr>
		<td>이름</td><td><input type="text" name="name" required></td>
	</tr>
	<tr>
		<td>비밀번호</td><td><input type="password" name="password" required></td>
	</tr>
	<tr>
		<td>E-mail</td><td><input type="email" name="email" required></td>
	</tr>
	<tr>
		<td>취미</td><td>취미 : 	<input type="checkbox" name="hobby" value="swimming">수영
								<input type="checkbox" name="hobby" value="baseball">야구
								<input type="checkbox" name="hobby" value="soccer">축구
								<input type="checkbox" name="hobby" value="basketball">농구
								</td>
	</tr>
	<tr>
		<td colspan="2"><textarea rows="20" cols="100" name="contents" required></textarea></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="등록"> <a href="list.jsp"><button>목록</button></a></td>
	</tr>
</table>
</form>
</body>
</html>