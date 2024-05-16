<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
  <meta charset="UTF-8">
  <meta name="description" content="HTML Study">
  <meta name="keywords" content="HTML,CSS,XML,JavaScript">
  <meta name="author" content="Bruce">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>HTML Study!!!</title>
</head>
	<body>
			<table border="1">
				<tr>
					<td>이름</td>
					<td><%=request.getParameter("usrName")%></td>
				</tr>
				<tr>
					<td>password</td>
					<td><%=request.getParameter("usrPasswd")%></td>
				</tr>
			</table>
	</body>
</html>