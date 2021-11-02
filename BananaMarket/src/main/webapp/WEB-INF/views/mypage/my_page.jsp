<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
  <%@ include file="../header.jsp" %> 
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>상품등록</title>
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
<html>
<body>
<form name="mypage" id="mypage" method="post">
<div class="container">
	<br>
	<figure class="text-center">
		<h4><p><strong>마이페이지</h4></p></strong>
	</figure>

	<div class="col-md-6 container-sm">
	    <label for="name" class="form-label">사용자 이름</label>
	    <input type="text" class="form-control btn-outline-dark" name="name" id="name" value="${sessionScope.loginUser.name}" disabled readonly><br>
	</div>
	
	<div class="col-md-6 container-sm">
	    <label for="email_id" class="form-label">E-Mail ID</label>
	    <input type="text" class="form-control btn-outline-dark" name="email_id" id="email_id" value="${sessionScope.loginUser.email_id}" disabled readonly><br>
	</div>
	
	<div class="col-md-6 container-sm">
	    <label for="nk_name" class="form-label">닉네임</label>
	    <input type="text" class="form-control btn-outline-dark" name="nk_name" id="nk_name" value="${sessionScope.loginUser.nk_name}" disabled readonly><br>
	</div>

	<div class="col-md-6 container-sm">
	    <label for="ph_nm" class="form-label">전화번호</label>
	    <input type="text" class="form-control btn-outline-dark" name="ph_nm" id="ph_nm" value="${sessionScope.loginUser.ph_nm}" disabled readonly><br>
	</div>
	
	<div class="col-md-6 container-sm">
	    <label for="address" class="form-label">주소</label>
	    <input type="text" class="form-control btn-outline-dark" name="address" id="address" value="${sessionScope.loginUser.address}" disabled readonly><br>
	</div>

	<div class="col-md-6 container-sm">
	    <input class="btn btn-outline-warning btn-lg btn-block" type="button" name="sell_list" value="판매등록 상품" onClick="location.href='sale_list_form'">
	    <input class="btn btn-outline-warning btn-lg btn-block" type="hidden" name="buy_list" value="구매내역" onClick="location.href='buy_list_form'">
	    <input class="btn btn-outline-warning btn-lg btn-block" type="hidden" name="favorite" value="관심상품" onClick="">
	    <input class="btn btn-warning btn-lg btn-block" type="button" name="profile_edit" value="프로필 수정" onClick="location.href='profile_update_form'">
	</div>
</div>
</form> 

 <br><br>
	<footer class="my-3 text-center text-small"> 
	<p class="mb-1">&copy; 2021 BANANA Market</p> 
	</footer>
	
</body>
</html>
    
