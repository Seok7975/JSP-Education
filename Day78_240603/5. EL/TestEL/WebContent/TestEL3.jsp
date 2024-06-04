<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% // 값 준비
	List<String> nameList = new LinkedList<String>();
	nameList.add("홍길동");
	nameList.add("임꺽정");
	nameList.add("일지매");
	pageContext.setAttribute("nameList", nameList);
%>
<%-- 리스트 객체에서 인덱스 1의 값 꺼내기 --%>
${pageScope.nameList[1]}
<%-- 리스트 객체에서 인덱스 1의 값 꺼내기 --%>
${nameList[1]}
</body>
</html>