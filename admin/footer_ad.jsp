<%@ page import="example.*" %>
<%@ page contentType = "text/html; charset=utf-8" %>
<%	
%>
<%@ page import="java.util.Date"%>

<footer class="container">
		<p><br>&copy; 쇼핑몰 대표 : 안효진, 고유번호 : 20210931, 연락처 : 010-4819-8534, 이메일 주소 : anhj321@naver.com <br> 
            
    <%
    	ShopTime time = new ShopTime();
         %>    
        오늘 날짜, 시간 : <%=time.timenow() %>
        </p>
    

	</footer>