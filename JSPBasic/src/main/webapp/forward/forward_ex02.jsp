<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//포워드 이동
	//RequestDispatcher dp = request.getRequestDispatcher("forward_ex03.jsp");
	//dp.forward(request, response);
	
	//3번 페이지에서 사용할 필요한 데이터를 담는 방법 request에 값저장
	//한번만 사용할거기 때문에 request
	request.setAttribute("data", "홍길동"); //키, 값
		
	request.getRequestDispatcher("forward_ex03.jsp").forward(request, response);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>