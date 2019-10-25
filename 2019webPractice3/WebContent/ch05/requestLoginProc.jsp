<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String idVar = request.getParameter("id");
	String pwVar = request.getParameter("pw");
	request.setAttribute("sa", idVar);
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
	<% if(idVar.equals("dong") && pwVar.equals("1234")){
			//out.println("<h3>로그인 성공</h3>");
			session.setAttribute("loginCheck","ok");
			session.setAttribute("nname", idVar);
		}
			//response.sendRedirect("requestLogin.jsp");
			//로그인하면 액션 페이지 갔다가 다시 로그인페이지로돌아감
		response.sendRedirect("requestLogin.jsp");
	%>
	
</body>
</html>