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
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id = "date" class="java.util.Date" />
	<!-- java.util.Date date = new java.util.Date(); -->
	<p>
		<%
			out.print("오늘의 날짜 및 시각");
		%>
	</p>
	<p><%=date %></p>  <!--  out.print(date) -->
</body>
</html>

<%-- 
	useBean 액션 태그의 속성
	속성		설명
	id		자바빈즈를 식별하기 위한 이름
	class	패키지 이름을 포함한 자바빈즈 이름. 자바빈즈는 인수가 없는 기존 생성자가 있어야 하며 추상 클래스를 사용할 수 없다.
	scope	자바빈즈가 저장되는 영역을 설정. page(기본 값), request, session, application 중 하나의 값을 사용
--%>