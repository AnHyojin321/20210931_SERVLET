<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%> <!-- 자바 리스트 자료구조 연동 -->
<%@ page import="dto.Product"%> <!-- 패키지 연동 -->
<%@ page import="dao.ProductRepository"%>
<%@ page import="java.sql.*"%>
<%@ include file="db/db_conn.jsp"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
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
// ArrayList<Product> listOfProducts = productDAO.getAllProducts(); // 리스트에 상품 전체 정보를 얻어온다.
%> 
    	<div class="container">
		<div class="row" align="center">
			<%
                String sql = "select * from product"; // 조회
                pstmt = conn.prepareStatement(sql); // 연결 생성
                rs = pstmt.executeQuery(); // 쿼리 실행
                while (rs.next()) { // 결과 ResultSet 객체 반복
	        %>
			<div class="col-md-3">
                 <div class="card bg-dark text-white">
                     <img src="images/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">

                </div>
				<h3><%=rs.getString("p_name")%></h3>
		<p><%=rs.getString("p_description")%>
		<p><%=rs.getString("p_unitPrice")%>원
		<p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>
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
