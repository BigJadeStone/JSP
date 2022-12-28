<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	//idCheck는 체크박스가 체크 안되면 값으로 null이 들어옴
	String idCheck = request.getParameter("idCheck"); 
	
	//로그인 성공이라 가정
	if(id.equals("aaa123") && pw.equals("1234")){
		
		//로그인 성공시 id쿠키생성
		Cookie cookie = new Cookie("user_id", id);
		cookie.setMaxAge(1800);
		response.addCookie(cookie);
		
		//idCheck쿠키 -> 변수명이 중복이라 idChec로 했음.
		//사용자가 체크박스를 체크했다면 idCheck를 생성 시간은 30초
		if(idCheck != null){// idCheck.equlas("y")로 하면 
							// 아이디 체크 안 하고 로그인시 창이 안나옴(오류발생)
			Cookie idChec = new Cookie("id_check", id);
			idChec.setMaxAge(30);
			response.addCookie(idChec);
		}
		
		
		response.sendRedirect("cookie_ex02_welcome.jsp"); //성공페이지
	} else {
		response.sendRedirect("cookie_ex02.jsp");//로그인 실패시 로그인 페이지로 다시 이동
	}
	




%>