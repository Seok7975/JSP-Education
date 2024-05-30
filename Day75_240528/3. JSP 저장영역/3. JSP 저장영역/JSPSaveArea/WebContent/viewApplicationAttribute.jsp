<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>application 기본 객체 속성보기</title>
</head>
<body>
<%
	Enumeration<String> attrEnum = application.getAttributeNames();
	//속성의 이름 목록을 구한다.
	while(attrEnum.hasMoreElements()){
		String name = (String) attrEnum.nextElement();
		Object value = application.getAttribute(name);
		//이름이 name의 속성의 값을 구한다.
%>
	application 속성 : <b><%=name %></b> = <%=value %> <br>
<%
	}
%>
</body>
</html>