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
	String user_id = (String) session.getAttribute("user_id");
%>
<%=user_id %>
<h1> 로그인생성 </h1>
</body>
</html>