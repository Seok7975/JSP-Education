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
<title>회원가입</title>
<link rel="stylesheet" type = "text/css" href="css/JSPTTest.css">
</head>
<body>
<form method = "post" action="JSPTTest5Result.jsp"> 
	<table>
		<caption>회원가입</caption>
		<tr>
			<td><label for="name">이름  </label></td><td> <input type = "text" name="name" id="name" required></td>
		</tr>
		<tr>
			<td><label for="id">아이디  </label></td><td> <input type = "text" name="id" id="id" required></td>
		</tr>
		<tr>
			<td><label for="pw">비밀번호  </label></td><td> <input type = "password" name="pw" id="pw" required></td>
		</tr>
		<tr>
			<td><label for="pw2">비밀번호 확인  </label></td>
			<td> <input type = "password" name="pw2" id="pw2" required><span id="pwChkTxt"></span></td>
		</tr>
		<tr>
			<td><label for="email">이메일  </label></td><td> <input type = "email" name="email" id="email" required></td>
		</tr>
		<tr>
			<td>취미  </td>	<td> 
								<input type = "checkbox" name="hobby" value="reading" id="reading"><label for="reading">독서</label>
								<input type = "checkbox" name="hobby" value="cooking" id="cooking"><label for="cooking">요리</label> 
								<input type = "checkbox" name="hobby" value="running" id="running"><label for="running">조깅</label> 
								<input type = "checkbox" name="hobby" value="swimming" id="swimming"><label for="swimming">수영</label> 
								<input type = "checkbox" name="hobby" value="sleeping" id="sleeping"><label for="sleeping">취침</label>
							</td>
		</tr>
		<tr>
			<td>전공  </td>	<td> 
								<input type = "radio" name="major" value="Korean" id="Korean"  required><label for="Korean">국어</label>
								<input type = "radio" name="major" value="English" id="English"><label for="English">영어</label>
								<input type = "radio" name="major" value="Math" id="Math"><label for="Math">수학</label>
								<input type = "radio" name="major" value="Design" id="Design"><label for="Design">디자인</label>
							</td>
		</tr>
		<tr>
			<td><label for="aMobileCarrier">전화번호</label> </td><td> 
							<select name="aMobileCarrier">
								<option value="SKT">SKT</option>
								<option value="KT">KT</option>
								<option value="LG">LG</option>
							</select>
						</td>
		</tr>
		<tr>
			<td colspan="2"  id="submit"><input type="submit" value="전송"> <input type="reset" value="초기화"></td>
		</tr>
	</table>
</form>
<script src="js/JSPTTest.js"></script>
</body>
</html>