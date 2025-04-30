<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP_과제1</title>
</head>
<body>
	<h1>숫자 비교 결과</h1>
	<% 
	int a = 15;
	int b = 10;
	%>
	<span>첫 번째 숫자: <%=a %></span></br></br>
	<span>두 번째 숫자: <%=b %></span></br></br>
	<% if(a>b){
		%>
		<span><%=a %>이(가) <%=b %>보다 큽니다.</span></br></br>
		<% 
	}else{
		%>
		<span><%=b %>이(가) <%=a %>보다 큽니다.</span></br></br>
		<%
	}
		%>
		
	<h1>짝수 홀수 판별</h1>
	
	<% if(a%2==0){
		%>
		<span><%=a %>는 짝수입니다.</span></br></br>
		<%
	}else{
		%>
		<span><%=a %>는 홀수입니다.</span></br></br>
		<%
	}
	%>
	
	<% if(b%2==0){
		%>
		<span><%=b %>는 짝수입니다.</span></br></br>
		<%
	}else{
		%>
		<span><%=b %>는 홀수입니다.</span></br></br>
		<%
	}
	%>
	
		
	
	

</body>
</html>