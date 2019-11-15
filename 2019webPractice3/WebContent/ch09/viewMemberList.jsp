<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@page import ="java.sql.*" %>
    <%
    	request.setCharacterEncoding("utf-8");
    	String memberID = request.getParameter("memberID");
    	String password = request.getParameter("password");
    	String name = request.getParameter("name");
    	String address = request.getParameter("address");
    	String tel = request.getParameter("tel");
    	Connection conn = null;
    	Statement smt = null;
    	ResultSet rs = null;
    	//resultset 안에는 커서가있다.
    	try {
    		String jdbcDriver = "jdbc:mysql://localhost:3306/studyjspc";
    		//db서버,db이름까지지정
    		//mysql8부터는 serverTimezone=UTC파라미터를줘야함
    		//?serverTimezone=UTC
    		String dbUser = "root";
    		String dbPass = "dongyang";
    		
    		Class.forName("com.mysql.jdbc.Driver");//해당메모리에 문자열을로딩 8은 com.mysql.cj.jdbc.Driver
    		//위문장은 트라이에안너허도됨
    		/*
    		1.커넥터(드라이버) 로딩 mysql 드라이버로딩은 별도의작업
			2.mysql서버에 연결(서버,유저(id),비밀번호) 234는순서대로
			3.쿼리실행을 위한 객체 생성
			4.3번의 객체를 이용해서 쿼리사용
			5.close
    		*/
    		conn = DriverManager.getConnection(jdbcDriver,dbUser,dbPass);
    		//연결하려는 db서버,유저,비번
    		smt = conn.createStatement();
    		rs = smt.executeQuery("select * from members order by id;");
    		while(rs.next()){
    			out.print(rs.getString("id"));
    			out.print(rs.getString("passwd"));
    			out.print(rs.getString("name"));
    			out.print("<br>");
    		}
    		
    		
    		//id기준으로 정렬해서 모든필드가져옴
    		} finally {
    		smt.close();
    		conn.close();
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>