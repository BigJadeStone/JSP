<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	double kor = Double.parseDouble(request.getParameter("kor"));
	double eng = Double.parseDouble(request.getParameter("eng"));
	double math = Double.parseDouble(request.getParameter("math"));
	
	double average =  (kor+eng+math)/3;
	
	
	if(average >= 60){
		request.setAttribute("data",average);
		request.getRequestDispatcher("forward_quiz01_good.jsp").forward(request, response);
		//response.sendRedirect("forward_quiz01_good.jsp"); 이거 붙일 필요없음.
	} else{
		response.sendRedirect("forward_quiz01_bad.jsp");
	}
	
	
	
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