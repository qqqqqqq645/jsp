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
	/*클라이언트가 a문서를 요청했지만 결과적으로 b문서를전달
	이 메소드는 개발자의 의도에 따라 다른 문서를 전달하는 메소드인데 a문서를 요청햇다가 b문서를 요청하라는거보고 b문서를 또 요청?
	  action태그중에 forward 아무튼두개가다른데*/
%>

	<h1>로그인</h1>
		<form method='post' action='requestLoginProc.jsp'>
			아이디 : <input type="text" name='id'><p>
			비밀번호 : <input type="password" name='pw'><p>
			<input type="submit" value="확인">
		</form>
</body>
</html>