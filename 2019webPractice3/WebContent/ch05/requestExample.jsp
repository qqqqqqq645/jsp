<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request example</title>
</head>
<body> <!-- 파라미터가 데이터에 붙어서가는방식은 host -->
<h1> 숫자 입력 </h1> <!-- form method속성은 전송되어지는 방식 get/post get은 파라미터가 헤더영역에 붙어서 전송
					get방시은 header영역이 암호화되지않기때문에 보안에 취약 header는 길이제한이 있다.
					여기서 파라미터는 전송하는내용
					post방식은 보안까지 신경써야되서 어려움?
					상홍에 따라서 둘의코딩이다르다 -->
<form method="get" action="scriptlet1-1.jsp">			<!-- 태그에이름붙여주기 --><!-- form action속성은 전송받을 url -->
		<!-- <form action="서버로 전송한 데이터를 수신할 URL" method="데이터를 전송하는 방법"> -->
		<!-- https://search.naver.com/search.naver?sm=top_hty&fbm=0&ie=utf8&query=%EC%A0%90%EC%8B%AC%EB%A9%94%EB%89%B4 이건get방식
			query가 파라미터  -->
숫자 : <input type="text" name="num">
	<input type="submit" value="확인"><br>
	<input type="checkbox" value="ch" name="check">로그인 유지<br>
			<!-- num="1"&cherck="ch" 이런식으로 보내준다 get방식 -->
	</form>							<!-- submit은 클라언트에서 할이ㅡㄹ을하고 끝난다.
												폼이 넘겨줄때 submit속성 
												num="ab" 클라이언트가 적은 값 
												 check="ch" 체크밖스가 넘겨주는값 value -->
<%
	/*자바코드는 body에만넣어야되는게ㅏ아니다*/
	
%>
</body>
</html>