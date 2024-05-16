<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>
<%
	for(int i=0;i<5;i++){
		out.print("hi"+"<br>");
	}
%>

<hr>
<%
	for(int i=0;i<5;i++){
%>	
	hi<br>
<%
	}
%>	


</body>
</html>