<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1> include01.jsp 페이지 입니다. </h1>
	<jsp:include page="include02.jsp" flush="false" />
	<h1> 다시 include01.jsp 페이지 입니다. </h1>

</body>
</html>

<%-- 
- flush 속성은 포함될 페이지로 제어가 이동될 때 현재 포함하는 페이지가 지금까지 출력 버퍼에 저장한 결과를 
처리하는 방법을 결정한다.
- flush 속성의 값을 'true' 로 지정하면 포함될 페이지로 제어가 이동될 때 현재 페이지가 지금까지 버퍼에 
저장한 내용을 웹 브라우저에 출력하고 버퍼를 비운다.
- flush 속성을 일반적으로 'false' 로 지정하는 것이 좋다.(기본 값) 'true'로 지정하면 일단 출력 버퍼를 웹브라우저에 
전송하게 되는데 이때 헤더 정보도 같이 전송된다. 헤더 정보가 일단 웹 브라우저에 전송이 되고 나면 
헤더 정보를 추가해도 결과가 반영되지 않는다.
--%>