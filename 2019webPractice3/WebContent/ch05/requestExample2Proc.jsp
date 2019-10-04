<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- %@는 페이지 디렉티브 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestex2</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");//이거는 post일경우에 
	//리퀘스트 스트림의 인코딩을 utf로함
	/*get 방식의 리퀘스트 스트림의 인코딩 방식은 서버차원에서 해줘야됨
	[톰캣 설치 폴더]/[conf]/server.xml에서
	속성 [URLEnconding="utf-8추가"]
	
	*/
	String nameVar = request.getParameter("name");
	String gendvar = request.getParameter("gender");
	String hobbyVar [] = request.getParameterValues("hobby");
	out.println("<이름 : "+nameVar+"<br>");
	out.print("성별 : "+ gendvar + "<br>");
	for(int i=0;i<hobbyVar.length;i++){
		out.print(hobbyVar[i]+", ");
	}
	/*
	for(int i:hobbyVar){
		out.print(hobbyVar[i]+", ");
	}
	*/
	/*
	out.println("성별  : ");
	if(gend.equals("g1")){
		out.print("남");
	}
	else
		out.print("여");
	*//*
	out.print("<br>취미 : ");
	String hobby = request.getParameter("hobby");
	switch (hobby){
	case "g1" : out.print
	}
	*/
	
%>
</body>
</html>