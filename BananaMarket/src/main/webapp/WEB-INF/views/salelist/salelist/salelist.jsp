<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../header.jsp" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<script src="//code.jquery.com/jquery-3.6.0.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"	rel="stylesheet"	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"	crossorigin="anonymous">
<script	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"	crossorigin="anonymous"></script>


<style>
  .card{
    margin-top: 10px;
    margin-left: 3%;
    display: inline-block;
  }
  .button{
  	float:bottom;
  }
  
  #img1{
  	width:250px;
  	height:250px;
  	margin:5px;
  }
  
  .is-left{
  	float: left;
  }
  .is-right{
  	float: right;
  }
</style>

</head>

<body>
	<nav class="navbar navbar-light bg-light" style="background-color: #FFFA78;">
  <div class="container-fluid">
  <a class="navbar-brand">
  <!-- 상품추가에 필요한 form -->
	<form name="product" id="main_form" method="post"> 
		<div id= "new_product">
			<input type="button" class="btn btn-warning" name="insertProduct" value="상품등록" onClick="go_new_product()">
	 	</div>
	</form> 
  </a>
    <form class="d-flex" name="searchForm" method="get" action="search">
      <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="inputval" name="key">
      <input class="btn btn-outline-warning btn-sm" type="submit" id="search" value="검색">
    </form>
  </div>
</nav>

<form name="product_main_form" id="product_main_form" method="post">
<div>
	<c:forEach items="${saleList}" var="productVO">
		 <div class="card" style="width: 18rem;">
		  <div class="text-center"><img id="img1" src="images/product/${productVO.image1}" class="img-thumbnail" alt="productImage"></div>
		  <div class="card-body">
		    <h6 class="card-title"><strong>${productVO.product_name}</strong></h6>
		    <h6 class="card-price">${productVO.price}원</h6>
		    <input type="button" class="btn btn-outline-warning btn-sm" onclick="go_detail('${productVO.pd_id}')" value="제품 상세보기">
		  </div>
		</div>
	</c:forEach>	
</div>
</form>


 <br><br>
	<footer class="my-3 text-center text-small"> 
	<p class="mb-1">&copy; 2021 BANANA Market</p> 
	</footer>

</body>
</html>
 