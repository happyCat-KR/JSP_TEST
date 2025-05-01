<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 1번째 페이지 이동 방법 -->
<a href="./01_2_result.jsp?ha=hello">다음 페이지</a></br>

<input type="button" value="javascript 활용" onclick="이동()" /></br>
<script>
	function 이동() {
		location.href = "./01_2_result.jsp?scha=hello";
		
	}
</script>

<!-- 3번째 방법 -->
<form action="./01_2_result.jsp" method="post">
	<input type="text" placeholder="아이디 입력" name="user_id"/></br>
	<input type="password" placeholder="비밀번호 입력" name="user_pw"/></br>
	
	<!-- req value 결과값이 몇 개인가? -->
	<h3>라디오 / 국가 선택</h3>
	<input type="radio" name="rat" value="1"/>대한민국
	<input type="radio" name="rat" value="2"/>미국
	<input type="radio" name="rat" value="3"/>프랑스</br>
	
	<!-- req value, checkbox는 여러 개 -->
	<input type="checkbox" name="hobbys" value="수영"/>수영
	<input type="checkbox" name="hobbys" value="달리기"/>달리기
	<input type="checkbox" name="hobbys" value="독서"/>독서
	
	
	<input type="submit" value="전송"/>
</form>


</body>
</html>