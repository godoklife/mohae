<%@page import="java.net.http.HttpClient.Redirect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	String mid = (String)session.getAttribute("login");
		if(mid==null||!(mid.equals(admin)){
			response.sendRedirect("/mohae/error.jsp?code=notadmin");
		}else{	
	%>
	
	<div> 실시간 채팅 대기자 리스트 표시할것</div>
	
	<%	} %>
	
</body>
</html>