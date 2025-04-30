<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String name = "짱구"; %>
<% String msg = "Hello World"; %>
<% msg += ", JSP"; %>
<% int num = 10; %>

<%=msg %>
<%=num %>
<%=name %>
</body>
</html>