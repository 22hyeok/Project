<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../header.jsp" %> 
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>채팅 리스트</title>
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
<form name="chat_list_form" id="chat_list_form" method="post">
<input type="hidden" name="nowUser" id="nowUser" value="${sessionScope.loginUser.email_id}">
<div class="container">
	<br>
	<figure class="text-center">
		<h4><p><strong>채팅 리스트</h4></p></strong>
	</figure>
	
<div class="list-group">

<a href="#" class="list-group-item list-group-item-action">
	<div class="d-flex w-100 justify-content-between">
		<h5 class="mb-1">스마트폰 최신형</h5>
		<small>1 days ago</small>
	</div>
	<p class="mb-1">구매 가능할까요?</p>
	<small>오래된사용자 (asa@gmail.com)</small>
</a>

<a href="#" class="list-group-item list-group-item-action">
	<div class="d-flex w-100 justify-content-between">
		<h5 class="mb-1">농구공</h5>
		<small class="text-muted">3 days ago</small>
	</div>
	<p class="mb-1">이미 판매 됐습니다 죄송합니다. :)</p>
	<small class="text-muted">어제가입했어요 (yesterday@gmail.com)</small>
</a>

<a href="#" class="list-group-item list-group-item-action">
	<div class="d-flex w-100 justify-content-between">
		<h5 class="mb-1">최신형 접이식 자전거</h5>
		<small class="text-muted">7 days ago</small>
	</div>
	<p class="mb-1">감사합니다 잘 타겠습니다!</p>
	<small class="text-muted">강남 라이더 (rider@gmail.com)</small>
</a>

</div>
	
</div>
</form>
<br><br>
<footer class="my-3 text-center text-small"> 
	<p class="mb-1">&copy; 2021 BANANA Market</p> 
</footer>
	
</body>
</html>