<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>path_ex03</h2>
	
	<a href="../path_ex01.jsp">ex01(상대)</a>
	<a href="/JSPBasic/path/path_ex01.jsp">ex01(절대)</a>
	
	<hr/>
	<!-- a태그를 이용해서 session_login페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../session/session_login.jsp">session_login(상대)</a><br>
	<a href="/JSPBasic/session/session_login.jsp">session_login(절대)</a><br>
	<!-- a태그를 이용해서 TestServlet으로 상대경로, 절대경로로 이동 -->
	<a href="../../banana">TestServlet(상대)</a><br>
	<a href="/JSPBasic/banana">TestServlet(절대)</a><br>
	<!-- img태그를 이용해서 HTML폴더안에 1.jpg 참조 -->
	<img alt="제목" src="../../HTML/1.jpg" width="300" height="300">
	
</body>
</html>