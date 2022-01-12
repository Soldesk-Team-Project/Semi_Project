
function deleteBoard(no) {
	
	let ok = confirm('삭제하시겠습니까?')
	
	if(ok) {
		location.href='BoardDeleteC?no=' + no;
	}
}