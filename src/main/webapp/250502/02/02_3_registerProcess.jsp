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
String id = request.getParameter("userId");
String nickname = request.getParameter("nickname");
String password = request.getParameter("password");

UserVO userVO = new UserVO();
userVO.setUserId(id);
userVO.setNickname(nickname);
userVO.setPassword(password);

UserDAO userDAO = new UserDAO();

int result = userDAO.regiset(userVO);


if(result > 0){
	response.sendRedirect("02_1_login.jsp");
}else{
	response.sendRedirect("02_2_register.jsp");
}


%>

</body>
</html>