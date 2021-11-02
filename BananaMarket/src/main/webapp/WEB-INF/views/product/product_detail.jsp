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
<form class="row g-3"name="product" id="product_detail" method="POST" >
<input type="hidden" name="nowID" id="nowID" value="${sessionScope.loginUser.email_id}">
<input type="hidden" name="emailID" id="emailID" value="${productVO.email_id}">

<div class="container">
	<br>
	<figure class="text-center">
		<h4><p><strong>상품 상세 정보</h4></p></strong>
	</figure>
	
	<figure class="text-center">
		<img src="images/product/${productVO.image1}" width="300pt">
	</figure>

	<div class="col-md-6 container-sm">
	    <label for="product_name" class="form-label">상품명</label>
	    <input type="text" class="form-control btn-outline-dark" name="product_name" id="product_name" value="${productVO.product_name}" disabled readonly><br>
	</div>

	<div class="col-md-6 container-sm">
	    <label for="category" class="form-label">카테고리</label>
   		  <c:choose>
		  	<c:when test="${productVO.category eq '3'}">
		  		<input type="text" readonly class="form-control btn-outline-dark" id="category" value="가전" disabled readonly>
		  	</c:when>
		  	<c:when test="${productVO.category eq '2'}">
		  		<input type="text" readonly class="form-control btn-outline-dark" id="category" value="식품" disabled readonly>
		  	</c:when>
		  	<c:otherwise>
		  		<input type="text" readonly class="form-control btn-outline-dark" id="category" value="기타" disabled readonly>
		  	</c:otherwise>
		  </c:choose>
	</div>

	<div class="col-md-6 container-sm">
		<br>
	    <label for="price" class="form-label">가격</label>
	    <input type="text" class="form-control btn-outline-dark" name="price" id="price" value="${productVO.price}"disabled readonly><br>
	</div>
	
	<div class="col-md-6 container-sm">
	    <label for="useyn" class="form-label">중고여부</label>
		  	<c:choose>
		  		<c:when test="${productVO.useyn eq 'n'}">
					<input type="text" readonly class="form-control btn-outline-dark" id="state" value="새상품" disabled readonly>  			
		  		</c:when>
		  		<c:otherwise>
		  			<input type="text" readonly class="form-control btn-outline-dark" id="state" value="중고상품" disabled readonly>
		  		</c:otherwise>
		  	</c:choose>
	</div>
	<br>
	<div class="col-md-6 container-sm">
		  <label for="content" class="form-label">상품설영</label>
		  <textarea class="form-control btn-outline-dark" rows="10" name="content" id="content" disabled readonly>${productVO.content}</textarea>
	</div>	
	
	<div class="col-md-6 container-sm">
		<br>
	    <label for="email_id" class="form-label">판매자</label>
	    <input type="text" class="form-control btn-outline-dark" name="email_id" id="email_id" value="${productVO.email_id}"disabled readonly><br>
	</div>	
	
	<div class="col-md-6 container-sm">
	    <label for="ph_nm" class="form-label">연락처</label>
	    <input type="text" class="form-control btn-outline-dark" name="ph_nm" id="ph_nm" value="${productVO.ph_nm}"disabled readonly><br>
	</div>		
	
	<div class="col-md-6 container-sm">
		<button type="submit" class="btn btn-warning btn-lg btn-block" onClick="go_mod('${productVO.pd_id}')">상품정보 수정</button>
		<button type="submit" class="btn btn-warning btn-lg btn-block" onClick="go_chat()">채팅으로 거래하기</button>
		<br>
		<a href="#" onClick="location.href='index'">돌아가기</a>
	</div>
	
</div>
</form>

<br><br>
<footer class="my-3 text-center text-small"> 
<p class="mb-1">&copy; 2021 BANANA Market</p> 
</footer>

</body>
</html>