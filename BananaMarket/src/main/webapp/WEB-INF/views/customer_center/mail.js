function go_mail() {
	
	if($("#nowUser").val() == ""){
		alert("로그인 후 이용 가능합니다.");
	} else {
		$("#center_form").attr("action", "mail_form").submit();
	}
}



/*
 * 1:1문의 폼에 항목이 입력되었는지 확인
 */
function go_save() {
	
	var $title = $("#title");
	var $contents = $("#contents");
	
	if ($title.val()=="") {
		alert("제목을 입력하세요!");
		$title.focus();
	} else if ($contents.val()=="") {
		alert("내용을 입력하세요!");
		$contents.focus();
	} else {
		$("#mail_form").attr("action", "send_email").submit();
		alert("관리자에게 메일 발송을 완료했으며, 24시간 내에 답장을 드릴 예정입니다.");
	}
	
}