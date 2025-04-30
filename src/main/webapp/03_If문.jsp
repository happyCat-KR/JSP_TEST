<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.title {
		color: green;
	}
</style>
</head>
<body>
<h1>IF 문</h1>
<%
if(true){%>
	<h3>Hello World</h3>
	<span>JAVA하고 HTML 같이 사용하기</span>
<%
}
%>

<%
int cnt = 100;

if(cnt <= 100) {
	out.print("<h1 class='title'>html</h1>");
	%>
	<span>마음대로 사용 해도 된다.</span><br/>
<%
}
%>
<%
String language = "java";

if(language.equals("java")){
	out.print("String은 equlals");
	%>
	<span>두 개의 값은 같다.</span>
<%
}
%>

</body>
</html>