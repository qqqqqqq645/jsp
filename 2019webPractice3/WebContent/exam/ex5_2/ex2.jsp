<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! int application = 1;%>
	<%=this.application++ %>
	<%application.setAttribute("a", "asdf"); %>
	<%int asdfi=1; %>
	<%!int asdfi=5; %>
	<%=this.asdfi %>

</body>
</html>