<%@ page contentType = "text/html; charset=utf-8" %>
<%	
%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

	
<%! String greeting = "자담치킨에 오신걸 환영합니다.";
	String tagline = "하단 페이지 : 확인";%>

    <div class="container">
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-4">
				<%=greeting%>
            </h3>
		</div>
	</div>
<%
	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
    	<div class="container">
		<div class="row" align="center">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="col-md-4">
                 <div class="card bg-dark text-white">
                        <img src="images/product/<%=product.getProductId()%>.jpg" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">그래픽 카드 이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p><%=product.getUnitPrice()%>원
                <p><a href="product_detail.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a>

			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
    
 <div class="card bg-dark text-white">
    <img src="images/back.jpg" class="card-img" alt="...">
    <div class="card-img-overlay">
    <h5 class="card-title">그래픽 카드 이벤트</h5>
    <p class="card-text">출처 : 다나와</p>
  </div>
  </div>
	<div class="container">
		<div class="list-group">
      <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
        맵슐랭 치킨 </a>
      <a href="#" class="list-group-item list-group-item-action">후라이드치킨</a>
      <a href="#" class="list-group-item list-group-item-action">양념치킨</a>
             <a href="#" class="list-group-item list-group-item-action">간장치킨</a>
     
    </div>
		<hr>
	</div>
