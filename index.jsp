<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="example.*" %> 
<%@ page import="java.util.Date"%>
<%
    HelloWorld h = new HelloWorld();
%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>	<%-- JSP 주석 처리 --%>
	<nav class="navbar navbar-expand  navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./index.jsp">메뉴바 : 홈페이지</a>
			</div>
		</div>
	</nav>
	 <%-- CLASS는 스타일 적용시에 사용 되는 이름, 중첩 가능 --%>
    <%! String greeting = "상단 페이지 : 쇼핑몰 메인화면 문자열 안효진님";
      String tagline = "하단 페이지 : 확인";%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
		</div>
		<hr>
	</div>	
	<footer class="container">
		<p>&copy; 웹마켓 최하단 상태바</p>
            <%
        Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours();
        int minute = day.getMinutes();
        int second = day.getSeconds();
        if (hour / 12 == 0) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
            hour = hour - 12;
        }
        String CT = hour + ":" + minute + ":" + second + " " + am_pm;
        out.println("현재 접속  시각: " + CT + "\n");
    %>
	</footer>
</body>
</html>

