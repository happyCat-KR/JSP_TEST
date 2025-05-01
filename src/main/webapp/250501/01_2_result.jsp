<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>
	<h1>결과 페이지</h1>
	<%
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
	String a = request.getParameter("ha");
	String sca = request.getParameter("scha");
	
	String rat = request.getParameter("rat");
	String[] hobbys = request.getParameterValues("hobbys");
	%>
	
	<span>아이디: </span><%=id %></br>
	<span>비밀번호: </span><%=pw %></br>
	<span>A: </span><%=a %></br>
	<span>scA: </span><%=sca %></br>
	<span>국가: </span><%=rat %></br>
	<span>취미: </span>
	<%
	for(int i = 0; i<hobbys.length; i++){
	%>
		<span><%=hobbys[i] %></span>
	
	<%
	}
	%></br>
	

</body>
</html>