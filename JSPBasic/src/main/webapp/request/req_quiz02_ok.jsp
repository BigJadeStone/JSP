<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	double height = Double.parseDouble(request.getParameter("height"));
	double weight = Double.parseDouble(request.getParameter("weight"));
	double bmi = weight/(height/100*height/100); 
	
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	아이디:<%=id%><br>
	키:<%=height%><br>
	몸무게:<%=weight%><br>
	BMI지수:
		<%if(bmi>=25){ %>
			<%="과체중" %>
		<%} else if(bmi <= 18){%>
			<%="저체중" %>
		<%} else{%>
			<%="정상" %>
		<%}%>
		<%=bmi%>
</body>
</html>