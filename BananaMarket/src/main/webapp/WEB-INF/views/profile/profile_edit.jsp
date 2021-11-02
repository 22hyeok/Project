<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>프로필 수정</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
<style> 
	body { 
		min-height: 100vh; 
		background: -webkit-gradient(linear, left bottom, right top, from(#FFFA78), to(#F2EDD5)); 
		background: -webkit-linear-gradient(bottom left, #FFFA78 0%, #F2EDD5 100%); 
		background: -moz-linear-gradient(bottom left, #FFFA78 0%, #F2EDD5 100%); 
		background: -o-linear-gradient(bottom left, #FFFA78 0%, #F2EDD5 100%); 
		background: linear-gradient(to top right, #FFFA78 0%, #F2EDD5 100%);
	 }
	.input-form {
		max-width: 680px; 
		margin-top: 80px; 
		padding: 32px; 
		background: #fff; 
		-webkit-border-radius: 10px; 
		-moz-border-radius: 10px; 
		border-radius: 10px; 
		-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
		-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15); 
		box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
	} 
</style>
</head>
<body>
<form class="row g-3" name="frm" id="update_form" method="post">

<div class="container">
	<br>
	<figure class="text-center">
		<h4><p><strong>프로필 수정</h4></p></strong>
	</figure>
	<br>

	<div class="col-md-6 container-sm">
	    <label for="email" class="form-label">E-mail(ID)</label>
	    <input type="text" class="form-control" name="email" id="email" value="${sessionScope.loginUser.email_id}"><br>
	</div>

	<div class="col-md-6 container-sm"> 
		<label for="pwd">비밀번호</label> 
		<input type="password" class="form-control" name="pwd" id="pwd" placeholder="" value="${sessionScope.loginUser.pwd}" required>
	</div> 
	<div class="col-md-6 container-sm"> 
		<label for="pwdCheck">비밀번호 확인</label> 
		<input type="password" class="form-control" name="pwdCheck" id="pwdCheck" placeholder="" value="" required> <br>
	</div> 

	<div class="col-md-6 container-sm">
	    <label for="name" class="form-label">성명</label>
	    <input type="text" class="form-control" name="name" id="name" value="${sessionScope.loginUser.name}"><br>
	</div>	

	<div class="col-md-6 container-sm">
	    <label for="nk_name" class="form-label">닉네임</label>
	    <input type="text" class="form-control" name="nk_name" id="nk_name" value="${sessionScope.loginUser.nk_name}"><br>
	</div>	
	
	<div class="col-md-6 container-sm">
	    <label for="ph_nm" class="form-label">전화번호</label>
	    <input type="text" class="form-control" name="ph_nm" id="ph_nm" value="${sessionScope.loginUser.ph_nm}"><br>
	</div>		

	<div class="col-md-6 container-sm">
	    <label for="address" class="form-label">주소</label>
	    <input type="text" class="form-control" name="address" id="address" value="${sessionScope.loginUser.address}">
	    <input type="button" class="btn btn-outline-secondary" value="주소수정" onclick="address_edit()">
	</div>	
	
	<br><br>
	<div class="col-md-6 container-sm">
		<input type="button" class="btn btn-warning btn-lg btn-block" value="수정하기" onClick="go_profile_save('${sessionScope.loginUser.email_id}')">
		<br>
	  	<a href="#" onClick="location.href='index'">취소하고 돌아가기</a>
	</div>	
	
</div>
</form>

<br><br>
<footer class="my-3 text-center text-small"> 
<p class="mb-1">&copy; 2021 BANANA Market</p> 
</footer>

</body>
</html>