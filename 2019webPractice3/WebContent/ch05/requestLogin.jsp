<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	response.sendRedirect("responseExample.jsp");
%>

	<h1>로그인</h1>
		<form method='post' action='requestLoginProc.jsp'>
			아이디 : <input type="text" name='id'><p>
			비밀번호 : <input type="password" name='pw'><p>
			<input type="submit" value="확인">
		</form>
</body>
</html>