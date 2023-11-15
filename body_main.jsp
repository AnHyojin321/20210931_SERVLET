<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%> <!-- 자바 리스트 자료구조 연동 -->
<%@ page import="dto.Product"%> <!-- 패키지 연동 -->
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>

	
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
//	ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
    	<div class="container">
		<div class="row" align="center">
			<%
                String sql = "select * from product"; // 조회
                pstmt = conn.prepareStatement(sql); // 연결 생성
                rs = pstmt.executeQuery(); // 쿼리 실행
                while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>
			<div class="col-md-4">
                 <div class="card bg-dark text-white">
                     <img src="images/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                    </div>
				<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_unitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
			</div>
		</div>
	</div>
    <% }
        		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
        %>
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
