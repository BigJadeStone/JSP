<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>formatNumber, formatDate, parseDate, parseNumber</h2>
	<%--
	format -> 형식변환 
	parse -> 형변환
	 --%>
	 
	 <h2>formatDate -> 날짜를 날짜의 형태로 변경</h2>
	 
	 <c:set var="day" value="<%=new Date() %>"/>
	 ${day }<br>
	 <fmt:formatDate var="r_day" value="${day }" pattern="yyyy년MM월dd일 hh:mm:ss"/>
	 <fmt:formatDate var="r_day2" value="${day }" pattern="yy-MM-dd"/>
	 ${r_day }<br>
	 ${r_day2}<br>
	 
	 <h2>parseDate -> 문자를 날짜의 형태로 변경</h2>
	 <fmt:parseDate var="r_day3" value="2022-12-02" pattern="yyyy-MM-dd"/>
	 <fmt:parseDate var="r_day4" value="2022-12-02 23:45:12" pattern="yyyy-MM-dd HH:mm:ss"/>
	 ${r_day3 }<br>
	 ${r_day4 }<br>
	 
	 <hr>
	 <h2>formatNumber -> 숫자를 숫자의 형태로 변경</h2>
	 <fmt:formatNumber var="r_num" value="2000" pattern="0,000.000"/>
	 
	 ${r_num }<br>
	 
	 <h2>parseNumber -> 문자를 숫자의 형태로 변경</h2>
	 <fmt:parseNumber var="r_num2" value="1,000원" pattern="0,000원"/>
	 ${r_num2 }
	 
	 <h3>실습</h3>
	 <h2>아래값들을 2020년05월03일 형식으로 변경해서 출력</h2>
	 
	 <c:set var="TIME_A" value="2020-05-03"/>
	 <fmt:parseDate var="D_time" value="${TIME_A }" pattern="yyyy-MM-dd"/>
	 <fmt:formatDate var="F_time"  value="${D_time }" pattern="yyyy년MM월dd일"/>
	 ${F_time }<br> 
	 <c:set var="TIME_B" value="<%=new Date() %>"/>
	 <fmt:formatDate var="F_date" value="${TIME_B }" pattern="yyyy년MM월dd일" />
	 ${F_date }
	 

</body>
</html>