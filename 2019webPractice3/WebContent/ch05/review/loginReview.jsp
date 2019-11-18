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
	String chked = (String)session.getAttribute("chked");
	String memName = (String)session.getAttribute("memName");
	String memPw = (String)session.getAttribute("memPw");
%>
	<h1>로그인</h1>
	<%
		
		 //String check =(String) session.getAttribute("loginCheck");
		//loginCheck 설정안도있으면 null 반환
			 //로그인 실패 or 처음들왔을대
		 if(memLogin == null){
			// chked = "";	memName = ""; memPw = "";

	%>
			<form method='post' action='loginReviewProc.jsp'>
			아이디 : <input type="text" name='id' value="<%=memName %>"><p>
			비밀번호 : <input type="password" name='pw' value=<%=memPw %>><p>
			<input type="checkbox" name='savechk'  <%=chked%>> 아이디/비밀번호 저장 <br> <!-- checked 씀면 체크되어있는상태 -->
			<input type="submit" value="확인"><br>
			<%=session.getAttribute("memName") %>
			</form>
	<%
		
		 } else{
			 			 
	%>
	<%=(String)session.getAttribute("userId") %> 님, 환영합니다.<br>
	<%=session.getAttribute("chked")%>
			<form method='post' action='logOutReview.jsp'>
				<input type="submit" value="로그아웃">
			</form>
	<%
		}
	%>

</body>
</html>