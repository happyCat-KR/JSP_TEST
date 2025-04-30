<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> Hello, JSP</h1>

<%-- JSP주석 --%>
<!-- HTML주석 -->

<% 
int a = 0;
int b = 0;
%>

<%
	Date now = new Date();
%>

<h1>현재시간: <%=now %></h1>
<%
a= 10;
b= 10;
%>
<h4>계산 결과: <%=a+b %></h4>
<% out.print(a+b); %>

	<ul>
		<li>JSP 기본 구조 이해하기</li>
		<li>스크립틀릿(&lt;% %&gt;) 사용하기</li>
		<li>out 객체를 사용한 출력</li>
		<li>Java 코드와 HTML의 조합</li>
	
	</ul>

</body>
</html>