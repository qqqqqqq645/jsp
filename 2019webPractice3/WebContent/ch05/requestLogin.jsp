
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
	//response.sendRedirect("responseExample.jsp");
	/*클라이언트가 a문서를 요청했지만 결과적으로 b문서를전달
	이 메소드는 개발자의 의도에 따라 다른 문서를 전달하는 메소드인데 a문서를 요청햇다가 b문서를 요청하라는거보고 b문서를 또 요청?
	  action태그중에 forward 아무튼두개가다른데*/
	  String id = (String)session.getAttribute("nname");
	
%>

	<h1>로그인</h1>
	<%
		
		 String check =(String) session.getAttribute("loginCheck");
		 if(check == null){
	%>
			<form method='post' action='requestLoginProc.jsp'>
			아이디 : <input type="text" name='id'><p>
			비밀번호 : <input type="password" name='pw'><p>
			<input type="submit" value="확인">
			</form>
	<%
			 //로그인 실패 or 처음들왔을대
		 } else{
			 			 
	%>
	<%=id %> 님, 환영합니다.
			<form method='post' action='requestLogOut.jsp'>
				<input type="submit" value="로그아웃">
			</form>
	<%
		}
	%>

</body>
</html>