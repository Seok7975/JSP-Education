<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AJAX</title>
<style>
.character {
	color: black;
}

.word {
	color: gray;
}
</style>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
	$(window).on(
			'load',
			function() {
				$.ajax({
					url : "msg.do", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
					type : "post", // HTTP 요청방식 (get/post)
					dataType : 'json', // 서버에서 보내줄 데이터의 타입
					// 성공적으로 값을 서버로 보냈을 경우 처리하는 코드
					success : function(data) {
						// var data = JSON.parse(data); // 파싱 불필요
						for ( var i in data) {
							var t = document.querySelector(".template")
									.cloneNode(true);
							// 자식 노드 역시 복제가 필요한 경우라면 true를 사용합니다. 
							// 기본값은 false로 자식 노드는 복사하지 않습니다.
							// class template 의 자식노드까지 복사
							//t.removeAttribute("id");
							t.children[0].innerText = data[i].id;
							t.children[1].innerText = data[i].msg;
							document.body.appendChild(t);
						}
					},
					error : function() {
						alert("서버요청실패");
					}
				});
	});
</script>
</head>
<body>
	<p class="template">
		<span class="character">주인공</span> : <span class="word">명대사</span>
	</p>
</body>
</html>