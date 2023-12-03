<%@ page contentType = "text/html; charset=utf-8" %>

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>배송 정보</title>
</head>
<body>
	<jsp:include page="../top_menu.jsp" />
	<div class="jumbotron">
	   <div class="container">
		<h1 class="display-3">배송 정보</h1>
	   </div>
	</div>
	<div class="container">
	   <form action="order_info_process.jsp" class="form-horizontal" method="post">
	     <input type="hidden" name="cartId" value="<%=request.getParameter("cartId")%>" />
	     <div class="form-group row">
	       <label class="col-sm-2">성명</label>
	          <div class="col-sm-3">
	      	<input name="name" type="text" class="form-control" />
	          </div>
	    </div>
	<div class="form-group row">
	<label class="col-sm-2">배송일</label>
	<div class="col-sm-3">
		<input name="shippingDate" type="text" class="form-control" />(yyyy/mm/dd)
	</div>
	  </div>
	 <div class="form-group row">
	   <label class="col-sm-2">국가명</label>
	     <div class="col-sm-3">
		<label><input type="checkbox" name="color" value="한국"> 한국  </label>
        <label><input type="checkbox" name="color" value="중국"> 중국  </label>
        <label><input type="checkbox" name="color" value="일본"> 일본  </label>
        <label><input type="checkbox" name="color" value="미국"> 미국  </label>
	    </div>
	 </div>
	<div class="form-group row">
	   <label class="col-sm-2">우편번호</label>
	     <div class="col-sm-3">
	 	<input name="zipCode" type="text" class="form-control" />
	    </div>
	</div>
           	<div class="form-group row">
	   <label class="col-sm-2">주소</label>
	     <div class="col-sm-5">
		<input name="addressName" type="text" class="form-control" />
	     </div>
	</div>
	<div class="form-group row">
	   <div class="col-sm-offset-2 col-sm-10 ">
	     <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
		<input type="submit" class="btn btn-primary" value="등록" />
		<a href="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
	   </div>
	</div>
  </form>
  </div>
</body>
</html>