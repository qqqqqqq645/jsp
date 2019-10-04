<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보 입력</title>
</head>
<body>
<h2>학생 정보 입력</h2>
<form method="post" action="requestExample2Proc.jsp">
	이름 : <input type='text' name='name' placeholder="이름입력하세요"><br> <!-- input type text에 value 넣으면 택스트에 기본으로 그내용이들어간다. placeholer="이름입력하세요"
													value와 placeholder눈 다른거다 -->
	성별 : <input type='radio' name='gender' value='g1'>남
		<input type='radio' name='gender' value='g2'>여
	취미 : <input type='checkbox' name='hobby' value='h1'>축구
		<input type='checkbox' name='hobby' value='h2'>영화
		<input type='checkbox' name='hobby' value='h3'>게임 <br>
	전공 : <select name='magor'> <!-- multiple 속성하면 여러개 설정 가능 -->
			<option> ----선택 ----</option>
			<option value='v1'>전산과</option>
			<option value='v2'>국문과</option>
			<option value='v3'>기계</option>
			<option value='v4'>자유전공과</option>
			<option value='v5'>경영학과</option>
		  </select><p>
	<input type='submit' value='보내기'>
</form>

</body>
</html>