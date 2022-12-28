<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//세션이 없다면 리다이렉트
	if(session.getAttribute("user_id")==null){
		response.sendRedirect("session_login.jsp");
	}

	//세션 사용
	String id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("닉네임");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id%>님 환영합니다<br>
	<a href="session_logout.jsp">로그아웃</a>
	

</body>
</html>