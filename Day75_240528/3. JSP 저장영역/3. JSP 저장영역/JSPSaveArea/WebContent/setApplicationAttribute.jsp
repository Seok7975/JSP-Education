<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String value = request.getParameter("value");
	
	if(name != null && value != null){
		application.setAttribute(name,value); 
		//application 기본 객체에 속성을 설정. 파라미터로 전달받은 값을 속성 이름과 값으로 사용
	}
%>
<!DOCTYPE>
<html>
<head>
<title>application 속성 지정</title>
</head>
<body>
<%
	if (name != null && value != null){
%>
	application 기본 객체의 속성 설정
	<%=name %> = <%=value %>
<%
	}else{
%>
		application 기본 객체의 속성 설정 안함.
<%
	}
%>
</body>
</html>

<%--
http://localhost:8080/JSPSaveArea/setApplicationAttribute.jsp?name=hong&value=good
--%>