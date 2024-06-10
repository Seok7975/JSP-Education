<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL TEST</title>
</head>
<body>
	<c:import url="/ELView.jsp" context="/JSTLTest2" varReader="in"> <%-- varReader 리소스의 내용을 Reader 객체로 읽어올 때 사용 --%>
		<jsp:useBean id="dataout" class="round25.out.DataOut">
		<!-- console 창에 출력된다. -->
		<c:set target="${ dataout }" property="in" value="${ in }"/>
		</jsp:useBean>
	</c:import>
</body>
</html>