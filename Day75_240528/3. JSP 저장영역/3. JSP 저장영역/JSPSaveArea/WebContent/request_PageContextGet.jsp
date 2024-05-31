<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h2> request와 pageContext 정보 가져오기 </h2>
	request : <%=request.getAttribute("id") %><br/>
	pageContext : <%=pageContext.getAttribute("name") %> <br/>	
	<hr>
</body>
</html>