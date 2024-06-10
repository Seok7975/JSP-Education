<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!-- 한글 인코딩 변환을 하여 데이터를 받는다. -->
<fmt:requestEncoding value="utf-8"/>

<!-- 에러가 발생하면 ex에 예외 내용을 담는다. -->
<c:catch var="ex">
	<!-- 여러 작업을 하나의 트랜잭션으로 관리한다. -->
	<sql:transaction dataSource="${ sessionScope.ds }"
						isolation= "read_uncommitted">
		<!-- 
		트랜잭션의 격리 수준(isolation)이란?
		동시에 여러 트랜잭션이 처리될 때
		특정 트랜잭션이 다른 트랜잭션에서 변경하거나 조회하는 데이터를 볼 수 있도록 허용할지 말지를 결정하는 것.
		
		READ UNCOMMITTED
		각 트랜잭션에서의 변경 내용이 COMMIT이나 ROLLBACK 여부에 상관 없이 다른 트랜잭션에서 값을 읽을 수 있다.
		 -->
		<!-- 
		앞에서 넘어온 name, id, pw의 값을 DB에 입력한다.
		날짜는 임의로 2010년 3월 2일로 고정한다.
		Date클래스는 1900년대가 기준이므로 110을 더하면 2010년이다.
		월은 배열이므로 0번이 1월이다.
		-->
		<sql:update>
			insert into MemberTb values (null, ?, ?, ?, ?)
			<sql:param value="${ param.name }"/>
			<sql:param value="${ param.id }"/>
			<sql:param value="${ param.pw }"/>
			<sql:dateParam value="<%= new java.util.Date(110, 2, 2) %>"/>
		</sql:update>
		
		<!-- 
			sql:update태그
			삽입(Insert), 갱신(Update), 삭제(Delete)등의 질의를 수행하는 태그이다.
		 -->
	
		<!-- 
		방금 입력한 레코드의 번호를 획득한다.
		(방금 입력한 데이터가 최고 번호 일테니깐.)
		-->
		<sql:query var="rs" scope="request">
			select max(num) as num from MemberTb
		</sql:query>
		
		<!-- 
			sql:query 태그
			질의를 수행하여 결과셋을 획득하는 태그이다.
		 -->		
		
		<!-- 
		query를 통해 얻은 데이터는 항상 for문을 돌면서 결과를 출력하는데
		어차피 결과가 하나일 것이므로 그냥 num이라는 변수에 담는다.
		위에서 얻은 ResultSet의 결과 rs에서 데이터 전체를 추출하는 
		예약어는 rows이다.
		-->
		<c:forEach var="obj" items="${ rs.rows }">	
			<c:set var="num" value="${ obj.num }" scope="request"/>
		</c:forEach>
	
		<!-- 
		이 레코드의 등록일을 수정한다.
		-->
		<sql:update>
			update MemberTb set regDate=? where num = ?
			<sql:dateParam value="<%= new java.util.Date(110, 2, 5) %>"/>
			<sql:param value="${ requestScope.num }"/>
		</sql:update>
	</sql:transaction>
</c:catch>

<!--
	에러가 발생하면 에러 메시지를 띄우고 
	그렇지 않으면 MemberTb 테이블의 모든 값을 가지고 
	출력 페이지로 Forward 이동한다.
-->
<c:choose>
	<c:when test="${ !empty(ex) }">
		ERROR : <c:out value="${ ex }"/>
	</c:when>
	<c:otherwise>
		<sql:query var="rs" scope="request" dataSource="${ sessionScope.ds }">
			select * from MemberTb
		</sql:query>
		<jsp:forward page="SQL_TAG_Test_1_2.jsp"/>
	</c:otherwise>
</c:choose>