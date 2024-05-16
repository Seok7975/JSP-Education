var pw = document.getElementById("pw");
var pw2 = document.getElementById("pw2");
var pwChkTxt = document.getElementById("pwChkTxt");
pw.addEventListener('keyup', passwordCheck);
pw2.addEventListener('keyup', passwordCheck);
function passwordCheck()
{
	if(pw.value != pw2.value){
		pwChkTxt.innerHTML = "비밀번호가 다릅니다.";
	}
	else if(pw.value == pw2.value){
		pwChkTxt.innerHTML = "";
	}
}