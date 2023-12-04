<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function sample4_execDaumPostcode(){
    new daum.Postcode({
        oncomplete: function(data) {
            var fullAddr = '';
            var extraAddr = '';
            if (data.userSelectedType === 'R') { 
                  fullAddr = data.roadAddress;
              } else { 
                  fullAddr = data.jibunAddress;
              }
            if(data.userSelectedType === 'R'){
                if(data.bname !== ''){
                  extraAddr += data.bname;
              }
                if(data.buildingName !== ''){
                  extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
              }
                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
        }
 
  document.getElementById('sample4_postcode').value = data.zonecode;
  document.getElementById("sample4_address").value = fullAddr;
  document.getElementById("sample4_detailAddress").focus();
  
}
 
}).open();
} 
</script>

<%
    Date day = new java.util.Date();
    day.setDate(day.getDate()+1);
    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
%>
        

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
	   <form action="order_info_process.jsp" class="form-horizontal" method="로post">
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
	<input name="shippingDate" type="date" class="form-control" min="<%=date.format(day)%>" required/>(ex:2000/01/01)
	</div>
	  </div>
	 <div class="form-group row">
      <label class="col-sm-2">국가명</label>
         <div class="col-sm-3">
             <select id="country" name="country" class="form-control">
                 <option value="선택하세요" selected="selected">선택하세요.</option>
                 <option value="한국">한국/korea</option>
                 <option value="중국">중국/china</option>
                 <option value="일본">일본/japen</option>
                 <option value="미국">미국/usa</option>
             </select>
         </div>
           </div>
	<div class="form-group row">
	   <label class="col-sm-2">우편번호</label>
        <input type="text" name="zipCode" id="sample4_postcode" placeholder="">
	     <div class="col-sm-7">
            <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
    <div class="form-group row">
        <label class="col-sm-2">주소</label>
            <input type="text" name="zipadress" id="sample4_address" placeholder="주소"  style="width:350px"><br>
             </div>
	    </div>
	</div>
<div class="form-group row">
	   <label class="col-sm-2">상세주소</label>
	     <div class="col-sm-9">
             <input type="text" name="addressName" id="sample4_detailAddress" placeholder="상세주소"  style="width:350px"> 
	     </div>
	</div>
	<div class="form-group row">
	   <div class="col-sm-offset-2 col-sm-10 ">
	     <a href="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role="button"> 이전 </a> 
		<input type="submit" class="btn btn-primary" value="등록" />
	    <a href ="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소</a>
           </div>
	</div>
  </form>
  </div>
</body>
</html>
