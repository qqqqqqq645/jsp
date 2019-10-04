<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scriptlet 예제 - 로직사용</title>
</head>
<body>
	<h2> 스크립트릿 예제 - 로직사용</h2>
	<hr>
	<% //<% == scriptlet
		int var1 = 6;
		if(var1 >5){
	%>
		변수 var1의 값은 5보다크다
	<%}else{%>
	 var1값은 5보다 작거나같다.
	 <%} %>
</body>
</html>