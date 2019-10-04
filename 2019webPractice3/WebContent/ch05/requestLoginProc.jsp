<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String idVar = request.getParameter("id");
	String pwVar = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
	<h3><%=request.getParameter("id") %></h3>
	-->
	<% if(idVar.equals("dong") && pwVar.equals("1234"))
			out.println("<h3>로그인 성공</h3>");
		else
			out.println("<h3>로그인 실패 </h3>");
	%>
	
</body>
</html>