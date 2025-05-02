<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="login_250502_04.UserVO" %>
    <%@ page import="login_250502_04.UserDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String user_email = request.getParameter("user_email");
String user_name = request.getParameter("user_name");
String[] user_numArr = request.getParameterValues("user_num");
String[] user_addressArr = request.getParameterValues("user_address");
String[] user_birthdayArr = request.getParameterValues("user_birthday");
String[] interestArr = request.getParameterValues("interest");
String introduce = request.getParameter("introduce");

String user_num = "";
String user_address = "";
String user_birthday = "";
String interest = "";

for(int i = 0; i<user_numArr.length; i++){
	user_num += user_numArr[i];
}
for(int i = 0; i<user_addressArr.length; i++){
	user_address += user_addressArr[i];
}
for(int i = 0; i<user_birthdayArr.length; i++){
	user_birthday += user_birthdayArr[i];
}
for(int i = 0; i<interestArr.length; i++){
	interest += interestArr[i];
}

UserVO userVO = new UserVO();
userVO.setUser_id(user_id);
userVO.setUser_pw(user_pw);
userVO.setUser_email(user_email);
userVO.setUser_name(user_name);
userVO.setUser_num(user_num);
userVO.setUser_address(user_address);
userVO.setUser_birthday(user_birthday);
userVO.setInterest(interest);
userVO.setIntroduce(introduce);


UserDAO userDAO = new UserDAO();

int result = userDAO.regiset(userVO);


if(result > 0){
	response.sendRedirect("login.jsp");
}else{
	response.sendRedirect("register.jsp");
}


%>

</body>
</html>