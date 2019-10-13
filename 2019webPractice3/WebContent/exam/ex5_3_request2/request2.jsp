<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2> 학생 정보 입력</h2>
<form method="post" action="request2Proc.jsp">
			학번 : <input type="text" name="studentNum"><p>
			전공 : <select multiple name="major">
							<option selected value="전산과">전산과
							<option value="국문과">국문과
							<option value="자유전공과">자유전공과
							<option value="경영학과">경영학과
			
						</select><p>
				<input type="submit" value="보내기">
</form>
</body>
</html>