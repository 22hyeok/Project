<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>  

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<title>채팅</title>
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
<form class="row g-3" name="chat_form" id="chat_form" method="post" >
<input type="hidden" name="emailID" id="emailID" value="${sessionScope.loginUser.email_id}">
<div class="container">
	<br><br>
	<figure class="text-center">
		<h4><p><strong>채팅으로 거래하기</h4></p></strong>
	</figure>

	<div id="messages" class="container">
		<div class="col-md-6 container-sm">
			<textarea rows="15" class="form-control" name="msg" id="msg" readonly></textarea>
			<br>
		</div>
	</div>

	<div id="chatArea" class="container">	  
		<div class="col-md-6 container-sm">
			<input type="text" class="form-control" name="msg" id="msg">
			<button type="submit" class="btn btn-warning btn-lg btn-block" onClick="">보내기</button>
		</div>
	</div>
	

	
	<div class="col-md-6 container-sm">
		<br>
		<a href="chat_list_form">채팅목록으로 돌아가기</a>
	</div>	
	
</div>
</form>
<br><br>
<footer class="my-3 text-center text-small"> 
	<p class="mb-1">&copy; 2021 BANANA Market</p> 
	</footer>

</body>
</html> 