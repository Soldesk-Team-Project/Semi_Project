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