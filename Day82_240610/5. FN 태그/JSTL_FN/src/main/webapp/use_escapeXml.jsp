<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
   <head>
      <title>JSTL Functions - escapeXml() 예제</title>
   </head>
   <body>
      <c:set var="str1" value="Hello World 1"/>
      <c:set var="str2" value="<b>Hello World 2</b>"/>

      <p>escapeXml() 사용 전 :</p>
      <p>str1 : ${str1}</p>
      <p>str2 : ${str2}</p>

      <p>escapeXml() 사용 후 :</p>
      <p>str1 : ${fn:escapeXml(str1)}</p>
      <p>str2 : ${fn:escapeXml(str2)}</p>
   </body>
</html>