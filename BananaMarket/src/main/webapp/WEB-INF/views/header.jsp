<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<meta charset="UTF-8">
	<title>BANANA Market</title>
	<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="member/member.js"></script>
	<script type="text/javascript" src="member/findIdAndPassword.js"></script>
	<script type="text/javascript" src="profile/profile.js"></script>
	<script type="text/javascript" src="product/product.js"></script>
	<script type="text/javascript" src="customer_center/mail.js"></script>
	<script type="text/javascript" src="customer_center/chat.js"></script>
</head>

<body>
	<nav class="navbar navbar-light" style="background-color: #FFD73C;">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="index">
	    	<img src="images/bananaicon.png" style="margin-left: 5px; margin-right: 5px; width:60x; height:60px;">
	    	<font size="6" color="FFFFFF"><b>BANANA</b></font>
	    	<font color="787878">&nbsp Market</font>
	    </a>
   
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    
	    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
	      <div class="navbar-nav">
	        <a class="nav-link active" aria-current="page" href="index">상품목록</a>
	        <a class="nav-link active"  aria-current="page" href="my_page_form">마이페이지</a>
	        <a class="nav-link active"  aria-current="page" href="chat_list_form">채팅목록</a>
	        <a class="nav-link active"  aria-current="page" href="customer_center">고객센터</a>
	      </div>
	    </div>	    
	  </div>
	</nav>
	
	<ul class="nav justify-content-end" style="background-color: #FFD73C;">
	  <li class="nav-item">
  		<c:choose>
			<c:when test="${empty sessionScope.loginUser}">
		    	<a class="nav-link active" aria-current="page" href="login"><button type="button" class="btn btn-outline-dark">로그인</button></a>
	    	</c:when>
			<c:otherwise>
				<li class="nav-item">
					 <a class="nav-link disabled"><b>${sessionScope.loginUser.nk_name}&nbsp(${sessionScope.loginUser.email_id})</b>&nbsp님 안녕하세요! &nbsp</a>
 				</li>
 				<li class="nav-item">
					<a class="nav-link active" href="logout">로그아웃</a>
				</li>
			</c:otherwise>       
		</c:choose>

	 </ul>
	
	 

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
