<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection conn=null;
String movePage = "04_3_result2.jsp";
try {
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC";
	
    Class.forName(driver);
	conn=DriverManager.getConnection(url,"root","1234");

    System.out.println("123");
    

    //연결 실패 시, 다시 재 연결
    if(conn == null || conn.isClosed()) {
        conn = DriverManager.getConnection(url,"root","1234");
        System.out.println("체크");
    }
    
    String sql = "insert into TB_NUM (NUM1, NUM2) values (?, ?)";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    //insert into TB_NUM (NUM1, NUM2) values (1, 2);
    
    String num1 = request.getParameter("num1");
    String num2 = request.getParameter("num2");
    pstmt.setString(1, num1);
    pstmt.setString(2, num2);

    int result = pstmt.executeUpdate();
    //실패
    if(result == 0) {
    	movePage="04_3_result2.jsp?msg=실패";
    } else {
    	movePage="04_3_result2.jsp?msg=성공";
    }
    
    response.sendRedirect("04_3_result2.jsp");
    
}
catch(Exception e) {
	e.printStackTrace();
}


%>
</body>
</html>