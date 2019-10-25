<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	//액션페이지
%>
<jsp:useBean id="mem" class="member.MemberInfo" />
<!-- member.MemberInfo mem = new member.MemberInfo 스크립트릿식 표연 -->
<!-- jsp:useBean id="mem" class="member.MemberInfo" scope="session" 액션태그로는 영역설정도가능-->
<!--jsp:setProperty property="id" name="mem" 
	<%-- value="<%=request.getParameter("id") %>" --%>
	
	폼이 400개라고하면 getparameter 을 일일히 하나씩보내야하지만
	오브젝트안에 400개의 데이터를 넣고 객체하나만ㅂㄴ
/-->

<jsp:setProperty property="*" name="mem"/>
<!-- mem.setId("Kim"); 
	out.print(mem.getId();-->
<!-- 폼의 name이 클래스이름이같아야됨 -->
<jsp:setProperty name="mem" property="password"
	value=""/>
<html>
<head><title>가입</title></head>
<body>

<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
	<td>아이디</td>
	<td><jsp:getProperty name="mem" property="id" /></td>
	<td>암호</td>
	<td><jsp:getProperty name="mem" property="password" /></td>
</tr>
<tr>
	<td>이름</td>
	<td><jsp:getProperty name="mem" property="name" /></td>
	<td>이메일</td>
	<td><jsp:getProperty name="mem" property="email" /></td>
</tr>
<tr>
	<td>주소</td>
	<td colspan="3">
	<jsp:getProperty name="mem" property="address" />
	</td>
</tr>
</table>

</body>
</html>
