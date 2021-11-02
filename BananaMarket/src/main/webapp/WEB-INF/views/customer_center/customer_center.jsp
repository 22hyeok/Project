<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../header.jsp" %> 
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>고객센터</title>
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
<form name="center" id="center_form" method="post">
<input type="hidden" name="nowUser" id="nowUser" value="${sessionScope.loginUser.email_id}">
	<div class="container-sm">
		<br><br><br>
		<h3>자주 묻는 질문</h3>
			<div class="accordion" id="accordionExample">
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingOne">
		      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		        Q.바나나마켓 운영정책
		      </button>
		    </h2>
		    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>A. 바나나 마켓은</strong> 통신판매중개자이며 통신판매의 당사자가 아님을 공지합니다.
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingTwo">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		        Q.판매금지 물품
		      </button>
		    </h2>
		    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>A. 주류, 담배 등</strong> 19세 미만의 성인인증이 필요한 품목의 판매를 금지합니다.
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingThree">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		        Q.바나나마켓 뜻이 뭔가요?
		      </button>
		    </h2>
		    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>A. 빠르고 즐거운 중고거래를</strong> 위해 생겨난 바나나 마켓의 이름은 "바로, 나의 물건을 나누는 마켓..!" 이라는 의미를 갖고 있습니다.
		      </div>
		    </div>
		  </div>
		</div>
		</div>
		<div class="container-sm">
		<br><br><br>
		<h3>공지사항</h3>
			<div class="accordion" id="accordionExample">
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingOne">
		      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
		        [공지]추석 연휴 택배 서비스 일정 2021/09/15
		      </button>
		    </h2>
		    <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>--연휴 이후 일괄</strong> 배송되며 택배사의 정책에 따라 다를 수 있습니다.
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingTwo">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
		        [공지]CJ대한통운 택배사 파업관련 2021/09/10
		      </button>
		    </h2>
		    <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>--자세한 내용은</strong> CJ대한통운 택배사 홈페이지를 참고 해 주세요.
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingThree">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		        [공지]바나나 마켓 개인정보처리방침 개정 안내 2021/09/01
		      </button>
		    </h2>
		    <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>--개인정보처리방침</strong> 개정안은 회원 e-mail에서 확인하실 수 있습니다.
		      </div>
		    </div>
		  </div>
		  <div class="accordion-item">
		    <h2 class="accordion-header" id="headingFour">
		      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
		        [공지]위조상품 판매에 대한 제재 정책 강화 안내 2021/08/14
		      </button>
		    </h2>
		    <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
		      <div class="accordion-body">
		        <strong>--위조상품, 불건전상품</strong> 판매에 대해서는 사전에 경고 없이 삭제처리 중에 있습니다.
		      </div>
		    </div>
		  </div>
		</div>
		<br><br><br>
		<div class="d-grid gap-2 col-6 mx-auto">
			<button type="button" name="mail_form" onClick="go_mail()" class="btn btn-warning btn-lg">1:1 문의하기</button>
		</div>
	</div>
	<br><br>
</form>

<footer class="my-3 text-center text-small"> 
	<p class="mb-1">&copy; 2021 BANANA Market</p> 
</footer>
	
</body>
</html>