<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<% // 값 준비
	Map<String, String> map = new HashMap<String, String>();
	map.put("s01", "홍길동");
	map.put("s02", "임꺽정");
	map.put("s03", "일지매");
	pageContext.setAttribute("map", map);
%>
<%-- 맵 객체에서 키 s02로 저장된 값 꺼내기 --%>
${pageScope.map.s02}
<%-- 맵 객체에서 키 s02로 저장된 값 꺼내기 --%>
${map.s02}
</body>
</html>