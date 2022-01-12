function validCheck() { // 체크하는중
	let id = document.getElementById("id").value;
	let pw = document.getElementById("pw").value;
	let pw2 = document.getElementById("pw2").value;
	let name = document.getElementById("name").value;
	let phone = document.getElementById("phone").value;
	let answer = document.getElementById("phone").value;
	alert(id + pw + pw2 + name + phone + answer)
	return false;

}

function validCheck2() {

	if (!checkName($('#name').val())) {

		return false;
	}
	else if (!checkId(id)) {
		return false;
	} else if (!checkPw(id, pw, pw2)) {
		return false;
	} else if (!checkPhone(phone)) {
		return false;
	} else if (!checkAnswer(answer)) {
		return false;
	}
	return true;

}

function idCheck() {  // 중복체크버튼
	let id = document.getElementById("id").value;

	axios.get(`/TodayMenu/CheckAccountC?id=${id}`).then(response=>{
		console.log(response.data.isDuplicated)
	
	if(response.data.isDuplicated == "true"){
		 alert("중복아이디입니다.")
	}else{
		alert("사용가능한아이디입니다.")}
		
	})

	return false; 
}

function checkExistData(value, dataName) {
	if (value == "") {
		alert(dataName + " 입력해주세요!");
		return false;
	}
	return true;
}

function checkId(id) {
	//Id가 입력되었는지 확인하기
	if (!checkExistData(id.value, "아이디를"))
		return false;

	let idRegExp = /^[a-z0-9]{4,12}$/; //아이디 유효성 검사
	if (!idRegExp.test(id.value)) {
		alert("아이디는 영문 소문자와 숫자 4~12자리로 입력해야합니다!");
		id.value = "";
		id.focus();
		return false;
	}
	return true; //확인이 완료되었을 때
}



function checkPw(id, pw, pw2) {
	//비밀번호가 입력되었는지 확인하기
	if (!checkExistData(pw.value, "비밀번호를"))
		return false;
	//비밀번호 확인이 입력되었는지 확인하기
	if (!checkExistData(pw2.value, "비밀번호 확인을"))
		return false;

	let pwRegExp = /^[a-zA-z0-9!@]{4,12}$/; //비밀번호 유효성 검사
	if (!pwRegExp.test(pw.value)) {
		alert("비밀번호는 영문 대소문자,숫자,특수문자!@를사용해 4~12자리로 입력해야합니다!");
		pw.value = "";
		pw.focus();
		return false;
	}
	//비밀번호와 비밀번호 확인이 맞지 않다면..
	if (pw.value != pw2.value) {
		alert("두 비밀번호가 맞지 않습니다.");
		pw.value = "";
		pw2.value = "";
		pw2.focus();
		return false;
	}

	//아이디와 비밀번호가 같을 때..
	if (id.value == pw.value) {
		alert("아이디와 비밀번호는 같을 수 없습니다!");
		pw.value = "";
		pw2.value = "";
		pw2.focus();
		return false;
	}
	return true; //확인이 완료되었을 때
}

function checkName(name) {


	if (!checkExistData(name, "이름을"))
		return false;

	let nameRegExp = /^[가-힣]{2,5}$/;
	if (!nameRegExp.test(name)) {
		alert("이름은 한글 2~5자리로 입력해야합니다!");
		name.value = "";
		return false;
	}
	return true; //확인이 완료되었을 때

}
function checkPhone(phone) {

	if (!checkExistData(phone.value, "전화번호를"))
		return false;

	let phoneRegExp = /^[0-9]{11}$/;
	if (!phoneRegExp.test(phone.value)) {
		alert("전화번호는 숫자 11자리로 입력해야합니다!");
		phone.value = "";
		phone.focus();
		return false;
	}
	return true; //확인이 완료되었을 때
}
function checkAnswer(answer) {

	if (!checkExistData(answer.value, "답변을"))
		return false;

	let answerRegExp = /^[가-힣]{1,10}$/;
	if (!answerRegExp.test(answer.value)) {
		alert("답변은 한글 10자 미만으로 입력해야합니다! 공백X");
		answer.value = "";
		answer.focus();
		return false;

	}
	return true; //확인이 완료되었을 때
}