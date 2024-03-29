<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모듈화 예제</title>
</head>
<%
	String contentPage = request.getParameter("CONTENTPAGE");
	if(contentPage == null){
		contentPage = "content.jsp";
	}
	/*파라미터는 1번에서 만든 변수의 값을 3번에서 하고싶으면
		파라미터는 1번에서 다음으로 한번만 보내즌다.
		1번->2번->3번
		파라미터는 두개의 파일간에 갑을 공유해야하는경우
		어트리뷰트는 여러 파일간에 값을 공유 */
%>
<body><!-- html 시맨틱 태그를 이용하여 구조 만듦 -->


	<header>
		<jsp:include page="top.jsp" flush="false"/> <!-- 이 액션은 해당파일로 가서 실행하고 온다 -->
		<!-- top.jsp 가 버퍼에 남아있지 않고 출발하면안되니까 모듈화되있는 온전한 페이지가 다 모이면 출발하려고 flush=false -->
		<%-- <%@ include file = "top.jsp%> 디렉티브를 만나면ㅁ 해당파일로가서 코드를 실행하지않고 코드를 가져옴 --%>
		<!--
			int a = 10		top				int a=10		top a=20
			jsp:top		a=20			@include top
			print a ->a=10					print a->a=20
		 -->
		 
	</header>
	<div id="content">
		<section id="areaSub">
			<jsp:include page="left.jsp" flush="false"/>
		</section>
		<section id="areaMain">
		<!-- 
			<jsp:include page="content.jsp" flush="false"/>
			-->
			<jsp:include page="<%=contentPage %>" flush="false"/>
		</section>
	</div>
	<footer>
		<jsp:include page="bottom.jsp" flush="false"/>
	</footer>


</body>
</html>