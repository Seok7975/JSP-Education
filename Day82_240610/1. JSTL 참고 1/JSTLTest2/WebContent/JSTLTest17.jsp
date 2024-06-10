<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL TEST</title>
</head>
<body>
	<%
		ArrayList<String> list = new ArrayList<String>();
		list.add("aaa");
		list.add("bbb");
		list.add("ccc");
		list.add("ddd");
		session.setAttribute("list", list);
	%>
	<c:forEach var="obj" items="${sessionScope.list}" begin="2" end="3" step="1" varStatus="pos">
		<c:out value="${pos.count}" /> : <c:out value="${obj}" /><br/>		
	</c:forEach>
	
	<%--
		컬렉션(Collection)에 담겨 있는 내용을 루프를 돌면서 출력하는 구문이다. 이 예가 실행되면
		begin 속성과 end 속성의 지정에 의해 배열의 세 번째 데이터에서 네 번째 데이터까지 출력된다.
		배열이 0번이라는 숫자에서 시작하는 것과 동일하다. step 속성을 지정해 두면 begin에서
		end까지 step에 정해둔 값만큼 증가하면서 출력된다. 만약 begin 속성과 end 속성 그리고
		step 속성을 모두 제거하면 배열의 모든 데이터가 출력된다.
	 --%>
</body>
</html>