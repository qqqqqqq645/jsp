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
	  String memLogin = (String)session.getAttribute("memLogin");
	String chked = "checked";
%>
	<h1>로그인</h1>
	<%
		
		 //String check =(String) session.getAttribute("loginCheck");
		//loginCheck 설정안도있으면 null 반환
		 if(memLogin == null){
	%>
			<form method='post' action='loginReviewProc.jsp'>
			아이디 : <input type="text" name='id'><p>
			비밀번호 : <input type="password" name='pw'><p>
			<input type="checkbox" name='savechk' <%=chked %> > 아이디/비밀번호 저장 <br> <!-- checked 씀면 체크되어있는상태 -->
			<input type="submit" value="확인"><br>

			</form>
	<%
			 //로그인 실패 or 처음들왔을대
		 } else{
			 			 
	%>
	<%=memLogin %> 님, 환영합니다.
			<form method='post' action='loginReviewProc.jsp'>
				<input type="submit" value="로그아웃">
			</form>
	<%
		}
	%>

</body>
</html>