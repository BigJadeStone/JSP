<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");	
	
	String id = request.getParameter("id");	
	String pw = request.getParameter("pw");	
	
	String[] inter = request.getParameterValues("inter");//checkbox
	
	String major = request.getParameter("major");//radio
	String region = request.getParameter("region"); //select
	String text = request.getParameter("text");//textarea
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%=id %><br>
	<%=pw %><br>
	<%=Arrays.toString(inter) %><br>
	<%=major%><br>
	<%=region%><br>
	<%=text%>

</body>
</html>