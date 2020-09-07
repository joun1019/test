<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="vo.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${id eq null}">
		<a href="loginForm.html">로그인</a>
	</c:when>
	<c:otherwise>
		[등급 : ${grade eq 's' ? '관리자' : '일반' }]<br>
		${id }님 환영합니다. &nbsp;&nbsp;<a href="logout">로그아웃</a>
	</c:otherwise>
</c:choose>

<%-- jsp로 만든 것, 위에 거는 jstl로 만든 것  ---> Model2 같은 경우에 view페이지를 jstl로 만드는 경우가 많다. 왜냐하면 더욱 깔끔하기 때문이다.
<%
	String id = (String)session.getAttribute("id");
	String grade = (String)session.getAttribute("grade");
	Member member = (Member)session.getAttribute("member");
	
	if(id==null){
%>
	<a href="loginForm.html">로그인</a>
<%}else{ %>
	[등급 : <%if(grade != null && grade.equals("s")){ %>관리자
	<%}else if(grade != null && grade.equals("N")){%> 일반 <%} %>] <br>
	${id }님 환영합니다. &nbsp;&nbsp;<a href="logout">로그아웃</a>		
<%} %>
 --%>
</body>
</html>