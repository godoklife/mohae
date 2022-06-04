<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고___장</title>
	<style type="text/css">
		*{
			margin:0;
			padding:0;
		}
		#error{
			margin : 7% auto;
			text-align: center;
			
		}
		a{
			text-decoration: none !important;
			color: black !important;
		}
		a:hover {
			color : black;
		}
	</style>
	
	<!--  부트스트랩 CSS CDN -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
		<%	String ipAddress=request.getRemoteAddr();
			if(ipAddress.equalsIgnoreCase("0:0:0:0:0:0:0:1")){
			    InetAddress inetAddress=InetAddress.getLocalHost();
			    ipAddress=inetAddress.getHostAddress();
			}
			session.setAttribute("ip", ipAddress);
			System.out.println("error.jsp 클라이언트IP 주소: "+ipAddress); 
			LocalDateTime ldt = LocalDateTime.now();
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일 hh시mm분ss초");
//			String nowdatetime = sdf.format(ldt);	// jsp에서는 안됨
			String nowdatetime = ldt.toString().split("T")[0] + " " +
					ldt.toString().split("T")[1].split("\\.")[0];
			
		%>
	<div id="error">
	
	<%try{
			if(request.getParameter("code").equals("exception")){%>
				
				<span style="color:red;font-size:20px;">SQL 예외 발생 : 콘솔 로그 확인 요</span><br>
	<%		}else if(request.getParameter("code").equals("notadmin")){%>
				<span style="color:red;font-size:20px;">정상적인 방법으로 접속하세요.</span><br>
	<%		}else if(request.getParameter("code").equals("notErr")){ %>
				<span style="color:red;font-size:20px;">success</span><br>
	<%		}else{ %>
				정의되지 않은 에러코드 입니다 : <%=request.getParameter("code")%><br>
	<%		} } catch (Exception e){ %>
				에러페이지에 에러코드가 없어요<br>
	<% 		}%>		
				접속 아이피 : <%=ipAddress%><br>
				실행일시 : <%=nowdatetime%><br>	
				<h3><a href="main.jsp"><img src="img/robot.png"><br>메인페이지로 이동하기</a></h3>
	</div>

</body>
</html>