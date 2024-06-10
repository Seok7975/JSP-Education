<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="장바구니 처리" %>    
<%@ page import="java.util.*, round22.base.*" %>
<%@ page session="true" %>

<%
	//세션에 들어 있는 정보를 배열로 가져오기 위해 선언
	ArrayList<JangBaguni> baguni = null;	
	//세션 영역에 jang이라는 이름으로 등록된 값을 획득한다.
	Object obj = session.getAttribute("jang");
	
	//세션 정보가 없으면 ArrayList를 새로 생성하고
	//정보가 있으면 해당 정보를 Casting한다.
	if(obj == null) baguni = new ArrayList<JangBaguni>();
	else baguni = (ArrayList<JangBaguni>)obj;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>내 장바구니</title>
</head>
<body>

	<h2>내 장바구니!</h2>
	<table border='1'>
		<tr>
			<th>번호</th>
			<th>제품명</th>			
			<th>수량</th>
			<th>가격</th>
			<th>총가격</th>
		</tr>
		<%
		//세션의 jang 정보에 내용이 없으면 출력한다.
		if(baguni.size() == 0) {
			out.println("<tr><td colspan='5'>");
			out.println("구입하신 물품이 없습니다.");
			out.println("</td></tr>");
		}
		else {
			int total = 0;
			//ArrayList에 있는 정보를 for문을 통해 모두 출력한다.
			for(int i = 0; i < baguni.size(); ++i) {
				JangBaguni jang = (JangBaguni)baguni.get(i);
				out.println("<tr><td>");
				out.println(i + 1 + "</td>");
				out.println("<td>" + jang.getName() + "</td>");
				out.println("<td>" + jang.getCnt() + "개</td>");
				out.println("<td>" + jang.getPrice() + "원</td>");
				out.println("<td>" + jang.getCnt() * jang.getPrice());
				out.println("원</td></tr>");
				//하나의 항목이 출력 될 때마다 총합을 계산한다.
				total += jang.getCnt() * jang.getPrice();
			}
			//총합을 출력한다.
			out.println("<tr><td colspan='4'>전체 합계</td>");
			out.println("<td>" + total + " 원</td></tr>");
		}
		%>
	</table>
</body>
</html>