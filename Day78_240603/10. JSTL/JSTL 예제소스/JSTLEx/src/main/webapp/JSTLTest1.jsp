<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:out value="�ȳ��ϼ���!"/><br/>
<c:out value="${null}">�ݰ����ϴ�.</c:out><br/>
<c:out value="�ȳ��ϼ���!">�ݰ����ϴ�.</c:out><br/>
<c:out value="${null }" default="����Ʈ ��"/><br/>
<c:out value="${null}"/><br/>
</body>
</html>