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
	
	//물품명과 가격을 획득한다.
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	
	//장바구니 세션에 이미 동일한 물품이 담겨 있으면
	//Count를 1 증가 시킨다.
	int pos = -1;
	for(int i = 0; i < baguni.size(); ++i) {
		JangBaguni jang = (JangBaguni)baguni.get(i);
		if(jang.getName().equals(name)) {
			pos = i;
			jang.setCnt(jang.getCnt() + 1);
			break;
		}
	}
	
	//장바구니 세션에 동일한 물품이 등록되어 있지 않다면
	//새로운 JangBaguni 객체를 생성하여 ArrayList에 등록한다.
	if(pos == -1) {
		JangBaguni jang = new JangBaguni();
		jang.setName(name);
		//물품가격을 받아 왔을 때 숫자에 ,(콤마)가 찍혀 있으므로
		//그것을 제거하고 숫자로 parsing 시킨다.
		jang.setPrice(Integer.parseInt(price.replaceAll(",", "")));
		jang.setCnt(1);
		//ArrayList에 해당 물품을 등록 시킨다.
		baguni.add(jang);
	}
	
	//세션에 jang이라는 이름으로 ArrayList를 등록 시킨다.
	//이미 세션에 해당 정보가 있었더라도 덮어 씌어 진다.
	session.setAttribute("jang", baguni);
%>

<script>
	alert('장바구니에 담았습니다.');	
	//쇼핑몰 페이지로 되돌아 간다.
	history.go(-1);
</script>