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
<%
    Cookie[] cookies = request.getCookies(); //쿠키를 받아온다.
    if(cookies != null){
        for(int i = 0 ; i < cookies.length; i++){
            String str = cookies[i].getName();
            if(str.equals("id")){
                out.println("cookies[" + i  + "] name = " + cookies[i].getName());
                out.println("cookies[" + i  + "] value = " + cookies[i].getValue());
                break;
            }
        }   	
    }
%>
</body>
</html>