<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="java.util.Calendar"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>HTML 주석과 jsp주석차이</h1>
<!-- html주석 웹브라우저에서보임 -->
<%--jsp주석 --%>
<% String str;
		//자바주석
		if(Calendar.getInstance().get(Calendar.HOUR_OF_DAY) >=12)
				str = "오후";
			else
				str="오전";
				%>
				<!--  지금은 <%=str%> -->
				지금 시각은 <%=new java.util.Date()%>.

</body>
</html>