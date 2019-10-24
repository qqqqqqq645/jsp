<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! Integer aa = 5; %>
<%=aa.getClass() %><p>
<%! String s1 = "소속변수"; %>
<%=s1.hashCode()%><p>
<% String s1 = "지역변수"; %>
<%=this.s1.toString() %><p>
s1 = <%=s1 %><p>
this.s1 = <%=this.s1 %>
</body>
</html>