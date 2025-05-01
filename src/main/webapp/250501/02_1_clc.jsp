<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="./02_2_result.jsp">

<input type="text" placeholder="첫 번째 수" name="num1"/>
<input type="text" placeholder="두 번째 수" name="num2"/></br>
<span>기능</span>
<select name="sign">
<option value="더하기">더하기</option>
<option value="빼기">빼기</option>
<option value="곱하기">곱하기</option>
<option value="나누기">나누기</option>
</select></br>

<input type="submit" value="계산하기">
</form>


</body>
</html>