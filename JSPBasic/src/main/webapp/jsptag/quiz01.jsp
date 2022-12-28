<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
1. Set을 이용해서 처리
2. 1~45까지 로또번호를 생성하고 리스트에 추가.
3. 중복되지 않은 숫자의 6개의 로또번호를 저장하면 됩니다.
4.화면에 출력
*/
%>  
<%
HashSet<Integer> set = new HashSet<>();//중복데이터가 저장이 안됨.
Random random = new Random();
/*
for(int i=1; i<=6; i++){
	set.add((int)(Math.random()*45+1));
}
*/
while(set.size() <6){
	set.add(random.nextInt(45)+1);
}
%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%--<% for(int num: set) --%> 
	
	로또번호 <%=set.toString() %>
	
</body>
</html>