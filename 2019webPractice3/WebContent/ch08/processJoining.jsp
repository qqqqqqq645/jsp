<%@ page contentType = "text/html; charset=utf-8" %>
<%
	request.setCharacterEncoding("utf-8");
	//액션페이지
%>
<jsp:useBean id="mem" class="member.MemberInfo" />
<!-- member.MemberInfo mem = new member.MemberInfo -->

<!--jsp:setProperty property="id" name="mem" 
	<%-- value="<%=request.getParameter("id") %>" --%>
/-->

<jsp:setProperty property="*" name="mem"/>
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
