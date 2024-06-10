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
	<c:redirect url="http://localhost:8080/JSTLTest2/JSTLTest10_1.jsp">
		<c:param name="str" value="데이터" />
	</c:redirect>
	<%-- url 속성의 위치로 매개 변수 str을 가지고 이동한다. --%>
</body>
</html>