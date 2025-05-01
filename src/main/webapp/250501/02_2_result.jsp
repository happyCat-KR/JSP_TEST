<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	width: 100vw;
	height: 100vh;

	display: flex;
	flex-direction: row;
	justify-content: center;
	padding-top: 30px;
}
.outbox {
	width: 300px;
	height: 350px;
	background-color: rgb(243, 237, 237);
	padding: 30px 10px;
	
	display: flex;
	flex-direction: column;
	gap: 10px;
}
.inbox {
	width: 100%;
	background-color: gray;
	padding: 10px 0px;
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	
	background-color: rgb(172, 158, 158);
}
.btn_box {
	width: 100%;
	height: 100%;
	
	display: flex;
	flex-direction: row;
	justify-content: center;
	align-items: center;
	
}
[id=btn_back] {
	background-color: green;
	color: white;
}

</style>

</head>
<body>


<%
int num1 = Integer.parseInt(request.getParameter("num1"));
int num2 = Integer.parseInt(request.getParameter("num2"));
String sign = request.getParameter("sign");
%>

<div class="outbox">
<h1>계산 결과</h1>

<span>첫 번째 숫자: <%=num1 %></span>
<span>두 번째 숫자: <%=num2 %></span>
<span>선택한 연산: <%=sign %></span>


<div class="inbox">
<%
if(sign.equals("더하기")) {
%>
	<span><%=num1 %>+<%=num2 %> = </span>
	<span><%= num1+num2 %><span>
<%	
}else if(sign.equals("빼기")) {
%>
	<span><%=num1 %>-<%=num2 %> = </span>
	<span><%= num1-num2 %><span>
<%	
}else if(sign.equals("곱하기")) {
%>
	<span><%=num1 %>*<%=num2 %> = </span>
	<span><%= num1*num2 %><span>
<%	
}else if(sign.equals("나누기")) {
%>
	<span><%=num1 %>/<%=num2 %> = </span>
	<span><%= num1/num2 %><span>
<%	
}
%>
</div>

<div class="btn_box">
<input type="button" value="다시 계산하기" onclick="돌아가기()" id="btn_back"/>

</div>

</div>



<script>

	function 돌아가기() {
		
		location.href = "02_1_clc.jsp"
	}
</script>

</body>
</html>