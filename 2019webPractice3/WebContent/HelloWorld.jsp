<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%><%-- <%@는 jsp파일 기본설정해주는태그 환경설정 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% java.util.Date today = new java.util.Date();
	String a;
%> <!--<% %> 이안에는 java코드입력가능-->  <%-- <%%>는 스크립트릿 --%>

현재 시각은 <%= today %> 입니다

<%! int b=1; %>

</body>
</html>