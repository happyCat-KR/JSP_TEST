<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인폼</h1>
	
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");

String movePage = "01_1_loginForm.jsp";
if(user_pw.equals("admin")){
	movePage = "01_3_mainForm.jsp?msg=1";
}else{
	movePage = "01_3_mainForm.jsp?msg=2";
}

response.sendRedirect(movePage);



%>
</body>
</html>