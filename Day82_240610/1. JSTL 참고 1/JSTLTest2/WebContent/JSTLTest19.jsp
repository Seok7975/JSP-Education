<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSTL Test</title>
</head>
<body>
	<c:set var="mapTest" value="<%=new HashMap<String, String>()%>"/>
	<c:set target="${mapTest}" property="key1" value="value1"/>
	<c:set target="${mapTest}" property="key2" value="value2"/>
	<c:set target="${mapTest}" property="key3" value="value3"/>
	
	<hr>
	<c:forEach var="map" items="${mapTest}" varStatus="status">
		<c:if test="${status.first}"> 첫 번째야<br> </c:if>
		<c:if test="${status.last}"> 마지막이야<br> </c:if>
		${status.index }
		${status.count }
		${map.key }
		${map.value }		
		<br>
	</c:forEach>
</body>
</html>


<!-- 
	< c : forEach > 와 forTokens 태그에 사용할 수 있는 속성 중에는 varStatus 속성이 있다. varStatus 속성은 배열이나
	컬렉션과 같은 집합체에서 항목의 인덱스 값을 사용해야 할 경우가 생기는 데 이 때 사용하게 된다.
	varStatus 속성은 인덱스(index)는 물론 반복 횟수(count) 등과 같은 반복 상태에 관련된 정보를
	프로퍼티로 알려준다.
	
	프로퍼티				설명
	index			items에 지정한 집합체의 현재 반복 중인 항목의 index를 알려준다.
					0부터 순서가 부여된다.
	count 			루핑을 돌 때 현재 몇 번째를 반복 중인지 알려준다. 1부터의 순서가 부여된다.
	first			현재 루프가 처음인지 여부를 알려준다. 첫 번째일 경우에는 true 아니면 false
					를 리턴한다.
	last			현재 루프가 마지막인지 여부를 알려준다. 마지막일 경우에는 true 아니면 false를
					리턴한다.
 -->