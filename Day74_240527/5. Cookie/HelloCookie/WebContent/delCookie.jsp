<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	    for(int i = 0 ; i < cookies.length; i++){
	        String str = cookies[i].getName();
	        if(str.equals("id")){
	            cookies[i].setMaxAge(0); //0 으로 max age 를 설정해줘서 삭제해준다.
	            response.addCookie(cookies[i]);
	            break;
	        }
	}
%>