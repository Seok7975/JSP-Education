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
<title>Hello JSP</title>
</head>
<body>
<%!
	private int num = 10;
	public int add(int num1, int num2)
	{
		return num1 + num2;
	}
%>
<table border="1">
<%
	out.print("<caption>구구단</caption>");
	for(int i=1;i<=9;i++)
	{
		out.print("<tr>");
		for(int j=2;j<=9;j++)
		{
			out.print("<td>"+j+"*"+i+"="+j*i+"</td>");
		}
		out.print("</tr>");
	}
%>
</table>
<%="이것은 표현식예제" %>
</body>
</html>
<%-- 이것은 jsp 주석입니다.--%>
<!-- 이것은 html 주석입니다. -->