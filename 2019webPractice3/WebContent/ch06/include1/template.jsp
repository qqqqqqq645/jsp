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
		<jsp:include page="top.jsp" flush="false"/>
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