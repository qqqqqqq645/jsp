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
		
		if(request.getParameter("savechk")!=null){
			session.setAttribute("chked","checked");
			session.setAttribute("memName",i);
			session.setAttribute("memPw",p);
		}
		else{
			
			session.removeAttribute(memName,memPw);
		}
		response.sendRedirect("loginReview.jsp");
	}
	else {
		session.setAttribute("chked","");
		response.sendRedirect("loginReview.jsp");
	}
	
	%>
<body>

</body>
</html>