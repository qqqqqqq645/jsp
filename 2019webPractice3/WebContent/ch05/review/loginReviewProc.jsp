<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<% String i = request.getParameter("id");
	String p = request.getParameter("pw");
	if(i.equals("dong") && p.equals("1234")){
		session.setAttribute("memLogin","ok");
		session.setAttribute("chked","checked");

	}
	else {
		session.setAttribute("chked","");
		response.sendRedirect("loginReview.jsp");
	}
	
	%>
<body>

</body>
</html>