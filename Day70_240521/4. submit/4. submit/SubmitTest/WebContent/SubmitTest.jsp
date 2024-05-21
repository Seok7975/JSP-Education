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
   <form name="nameForm" action="SubmitTestOK.jsp"  method="post">
            이름 : <input type="text" name="name"><br>
            <input type="button" onclick="checkName()" value="전송">
    </form>

<script>
function checkName(){
    var nameForm = document.nameForm;
    
    if(nameForm.name.value == ""){
        alert("이름을 입력하세요.")
    }else{
    	nameForm.submit();
    }
}
</script>
</body>
</html>