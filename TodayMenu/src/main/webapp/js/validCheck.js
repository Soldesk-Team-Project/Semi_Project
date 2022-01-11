function validCheck4() { // 체크하는중
	 
	
	if (!checkName($('#name').val())) {
		
            return false;
        } 
	else if (!checkPw(pw2)) {
            return false;
        }
	else if (!checkPhone(phone)) {
            return false;
        } 
	else if (!checkAnswer(answer)) {
            return false;
        } 
	
 
    }



 function checkExistData(value, dataName) {
        if (value == "") {
            alert(dataName + " 입력해주세요!");
            return false;
        }
        return true;
    }

function checkPw(pw2) {
        //비밀번호없으면 기존비밀번호로 
 	if (pw2.value == "")
           { return true;}
 
        let pwRegExp = /^[a-zA-z0-9!@]{4,12}$/; //비밀번호 유효성 검사
        if (!pwRegExp.test(pw2.value)) {
            alert("비밀번호는 영문 대소문자,숫자,특수문자!@를사용해 4~12자리로 입력해야합니다!");

            return false;
        }

        //아이디와 비밀번호가 같을 때..
        if (id.value == pw2.value) {
            alert("아이디와 비밀번호는 같을 수 없습니다!");
 
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
// JS 활용한 유효성 검사 lib 완성!
	
// 일반적으로 입력값의 유효성을 검사하는 것들
// 함수형태로 정리해놓기 (나중에 쓰려고)
// .jar 라이브러리 쓰는 것 처럼

	// 문제가 있으면 true, 없으면 false

// <input>을 넣으면..
	// 거기에 글자가 없으면 true 있으면 false
function isEmpty() {
	alert("pw 값을 넣어라");
	return !pw.value // 값이 없으면 과 같음
}


// <input>랑 글자수를 넣으면..
	// 입력한 글자수 보다 적으면 true 아니면 false
function lessThan(input, length) {
	return input.value.length < length;
}


// <input>을 넣으면
	// 한글, 특수문자 들어있으면 true, 없으면 false
function containKR() {
	// 너무 많으니까 되는거만 적어놓기
	let ok = "qwertyuiopasdfgjklzxcvbnmQWERTYUIOPASDFGJKLZXCVBNM1234567890@._";
	
	for (let i = 0; i < input.value.length; i++) {
		// 사용자가 input에 입력한 값을 하나씩 반복해서 검사한다.
		if (ok.indexOf(input.value[i]) == -1) {
			return true;
		}
	}
}

function containID(id) {
	// id는 영어소문자 , 숫자만 가능
	let ok = "qwertyuiopasdfgjklzxcvbnm1234567890";
	
	for (let i = 0; i < id.value.length; i++) {
		// 사용자가 input에 입력한 값을 하나씩 반복해서 검사한다.
		if (ok.indexOf(input.value[i]) == -1) {
			return true;
		}
	}
}
// <input> x 2개 넣으면 
	// 내용이 다르면 true, 아니면 false
function notEquals(pw, pw2) {
	
	 
	if (pw.value != pw2.value) {
            alert("두 비밀번호가 맞지 않습니다.");
            form.password1.value = "";
            form.password2.value = "";
            form.password2.focus();
            return false;
	}
return false;
	
}


// <input>, 문자열 세트
	// 그 문자열 세트가 포함 안되있으면 true
	// 들어있으면 false
function notContains(input, set) {
	// set : 0123456789 -> 숫자를 반드시 포함
	// set : QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm -> 영문을 반드시 포함
	
	for (let i = 0; i < set.length; i++) {
		if (input.value.indexOf(set[i]) != -1) {
			return false;
		}		
	}
	// 돌려보고 포함되지 않았으면 true로 넘겨서 에러로 잡는다.
	return true;
}

// <input> 을 넣으면
	// 숫자가 아니면 true, 숫자면 false
function isNotNumber(input) {
	return isNaN(input.value);
}
