<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>��ü�� ������Ƽ �� ����</h3>
<%!
public static class MyMember{
	int no;
	String name;
	
	public int getNo(){
		return no;
	}
	public void setNo(int no){
		this.no = no;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name = name;
	}
}
%>
<%
MyMember member = new MyMember();
member.setNo(100);
member.setName("ȫ�浿");
pageContext.setAttribute("member", member);
%>
${member.name}<br/>
<c:set target="${member}" property="name" value="�Ӳ���"/>
${member.name}<br/>
</body>
</html>