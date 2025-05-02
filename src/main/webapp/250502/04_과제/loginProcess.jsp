<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login_250502_04.UserVO" %>
<%@ page import="login_250502_04.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginProcess</title>
</head>
<body>
<%
	String input_id = request.getParameter("user_id");
	String input_pw = request.getParameter("user_pw");
	
	//DAO 연결
	UserDAO userDAO = new UserDAO();
	UserVO userVO = userDAO.login(input_id);
	String movePage = "login.jsp";
	
	if(userVO != null && userVO.getUser_pw().equals(input_pw)) {
		
		session.setAttribute("user_id", userVO.getUser_id());
		
		
		movePage = "main.jsp";
	}
	

	response.sendRedirect(movePage);
	
%>
</body>
</html>