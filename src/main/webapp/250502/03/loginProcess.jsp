<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="login.UserVO" %>
<%@ page import="login.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("userId");
	String pw = request.getParameter("password");
	
	//DAO 연결
	UserDAO userDAO = new UserDAO();
	UserVO userVO = userDAO.login(name);
	String movePage = "login.jsp";
	
	if(userVO != null && userVO.getPassword().equals(pw)) {
		session.setAttribute("userID", name);
		session.setAttribute("nickname", userVO.getNickname());
		
		movePage = "main.jsp";
	}
	

	response.sendRedirect(movePage);
	
%>
</body>
</html>