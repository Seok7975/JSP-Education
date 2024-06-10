<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 현재 페이지를 session에 참여 시킨다. --%>
<%@ page session="true" %> 
<!-- 
JSP 페이지가 HttpSession을 사용할지 여부를 지정하는 속성
-이 속성은 true와 false로 나뉘어져 있다
-이 속성의 기본값은 true이다
 -->

<%
	//원래는 DB로 부터 데이터를 추출해야 하지만
	//여기서는 배열로 그냥 선언하고 쓸 것이다.
	
	//이미지 파일명을 배열로 선언한다.
	String[] img = new String[] {
		"cpoint", "java", "jsp", "mfc", 
		"net", "oracle", "python", "tcpip", "xml"
	};

	//해당 제품의 이름을 배열로 선언한다.
	String[] name = new String[] {
		"C포인터", "자바", "JSP & Servlet", "MFC",
		"닷넷", "오라클", "파이썬", "TCP/IP", "XML 웹 서비스"
	};
	
	//해당 제품의 가격을 배열로 선언한다.
	String[] price = new String[] {
		"20,000", "32,000", "29,000", "35,000", 
		"29,000", "25,000", "32,000", "28,000", "30,000"
	};
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>프리렉 쇼핑몰!</title>
<script>
	//선택한 물품을 장바구니에 담기 위해 이동시킨다.
	function jang(name, price) {
		/*location.href='./ShopMall_2_Process.jsp?name=' + name + '&price=' + price;*/
		location.href=`./ShopMall_2_Process.jsp?name=\${name}&price=\${price}`;
	}
	// jsp에서는 템플릿 문자열에 \$를 붙여줘야 한다.
	
	//장바구니 목록 페이지로 이동한다.
	function move_jang() {
		location.href='./ShopMall_3_Baguni.jsp';
	}
</script>
</head>
<body>
	<h2>프리렉 쇼핑몰!</h2>	
	<table>
		<tr>
			<td colspan='3'>
				<input type='button' value='내 장바구니'
					onClick='move_jang()' style='border:none'/>
			</td>
		</tr>
		<%
		for(int i = 0; i < img.length; ++i) {
			//물품을 세개씩 한 줄에 표시하기 위한 조건식이다.
			if(i % 3 == 0) out.println("<tr>");
			out.println("<td><table>");
			out.println("<tr><td>");
			//이미지를 출력한다.
			out.println("<img src='./images/" + img[i] + ".gif'/> ");
			out.println("</td></tr>");
			//물품명을 출력한다.
			out.println("<tr><td>");
			out.println("<B>" + name[i] + "</B></td></tr>");
			//물품 가격을 출력한다.
			out.println("<tr><td>");
			out.println("가격 : " + price[i] + "원</td></tr>");
			out.println("<tr><td>");
			
			//물품명과 가격을 매개변수로 장바구니에 담을 수 있도록
			//jang()이라는 스크립트 함수를 호출한다.
			//실제 DB에서 물품을 가져 왔다면 PK를 매개변수로 해야 한다.
			out.println("<input type='button' value='담기' ");
			out.println("onClick='jang(\"" + name[i] + "\",\"" + price[i] 
			                     + "\")' style='border:none'/>");
			out.println("</td></tr>");
			out.println("</table></td>");
			//물품을 세개씩 한 줄에 표시하기 위한 조건식이다.
			if(i % 3 == 2) out.println("</tr>");
		}
		%>
	</table>
</body>
</html>