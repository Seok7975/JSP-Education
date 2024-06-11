<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AJAX</title>
<script>
	var req = new XMLHttpRequest();
	req.onreadystatechange = function a(){
		console.log(this.readyState, this.status);
		if(this.readyState == 4 && this.status == 200){
			console.log(this.response);
		}
	}
	/*
	Document.readyState
	Document.readyState 속성을 통해 document의 로딩 상태를 확인할 수 있다.
	Document.readyState 속성 값이 바뀔 때 readystatechange 이벤트가 document에서 일어난다.

	Syntax
	var string = document.readyState;

	Values
	document의 readyState 상태는 아래 3가지가 될 수 있다.

	loading
	document 로딩 중.

	interactive
	문서의 로딩은 끝이 나고 해석 중 이지만 images, stylesheets, frames과 같은 하위 자원들은 로딩되고 있는 상태이다.

	complete
	문서와 모든 하위 자원들의 로드가 완료된 상태이다. 이 상태는 load 이벤트가 발생되기 직전 상태이다.
	https://developer.mozilla.org/ko/docs/Web/API/Document/readyState
	*/
	
	// readyState가 변할 때 마다 해당 메소드가 호출된다.
	// status는  http request의 응답 코드를 나타냄
	req.open("GET", "./data.txt");
	//req.open("GET", "http://localhost:8080/AJAX1/test.jsp");
	//req.open("GET", "http://localhost:8080/AJAX1/wrong.jsp");
	req.send();
	console.log(req.response);
</script>
</head>
<body>
AJAX
</body>
</html>
<!-- 
크롬 개발자 콘솔에서 확인해 본다
req.readyState; 
var req2 = new XMLHttpRequest();
req2.readyState;
req2.open("get", "./data.txt");
req2.readyState;
req2.send();
req2.readyState;

AJAX - Response 받아서 처리하기
AJAX
readyState 속성
AJAX 요청에 따라 0~4까지 변화함
readyState	의미
0			open 메소드 호출 전
1			open 메소드 호출 후, send 메소드 호출 전
2			보낸 요청에 대해 응답 헤더가 수신된 후
3			응답의 바디 부분이 수신중일 때
4			모든 응답이 수신되었을 때
onreadystatechange 속성
readyState가 변할 때마다 호출되는 콜백 함수
status 속성
HTTP response의 응답 헤더에 기록된 코드

Response Code	의미
200				OK
404				Not Found
500				Internal Error

200 OK
요청이 성공적으로 되었습니다. 성공의 의미는 HTTP 메소드에 따라 달라집니다:
GET: 리소스를 불러와서 메시지 바디에 전송되었습니다.
HEAD: 개체 해더가 메시지 바디에 있습니다.
PUT 또는 POST: 수행 결과에 대한 리소스가 메시지 바디에 전송되었습니다.
TRACE: 메시지 바디는 서버에서 수신한 요청 메시지를 포함하고 있습니다.

...	...
응답을 정상적으로 수신한 경우
readyState : 4
status : 200
기타 callback function 활용 가능한 속성
onloadstart
onprogress
onabort
onerror
onload
ontimeout
onloadend
-->