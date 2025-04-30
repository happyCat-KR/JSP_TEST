<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP_과제02</title>
<style>
	.outbox{
		display: flex;
		flex-direction: row;
		justify-content: start;
		gap: 10px
		
	}

	.inbox {
		width: 30px;
		height: 30px;
		border-radius: 15px;
		
		background-color: blue;
		color: white;
		
		display: flex;
		flex-direction: row;
		justify-content: center;
		align-items: center;
	
	}
	.inbox_change{
		background-color: red;
	}
	.container {
	   display: flex;
	   justify-content: start;
	   gap: 10px;
	   margin-left: 20px;
	}
	
	.green {
	   background-color: green;
	}
	.blue {
	   background-color: blue;
	}
	.red {
	   background-color: red;
	}
	.circle2 {
	   width: 50px;
	   height: 50px;
	   
	   border-radius: 50%;
	   
	   display:flex;
	   justify-content: center;
	   align-items: center;
	   font-size: 16px;
	   font-weight: bold;
	   color: white;
	}
	.outbox2 {
	   width: 90vw;
	   height: 40vh;
	   background-color: rgba(0,0,0,0.1);
	   display: flex;
	   flex-direction: column;
	   
	}
	
	.inbox2 {
	   position: relative;
	   display: flex;
	   
	   align-items: center;
	   
	   margine: 10px;
	}
	
	.cricle {
	margin: 10px;
	   padding: 5px;
	   display: flex;
	   flex-direction: row;
	   justify-content: center;
	   align-items: center;
	   width: 30px;
	   height: 30px;
	   border-radius: 20px;
	   background-color: green;
	   width: 30px;
	   color: white;
	}
</style>
</head>
<body>
	<div class="outbox2">
      <h1>1부터 10까지 나열</h1>
      </br>
      <div class='inbox2'>
         <%
         for (int i = 1; i <= 10; i++) {
         %>
         <div class='cricle'><%=i%></div>
         <%
         }
         %>
         </div>
         <h1>2의 배수 나열</h1></br>
         <div class='inbox2'>
         <%
         for(int i=1;i<=20;i++){
         if(i%2==0){%>
         <div class='cricle'><%=i%></div>
         
         
         <%}}%>
         
         </div>

   </div>

	<h3> 짝수와 홀수 구분하여 나열 </h3>
	
	<div class = " container">
	
	<%
	   for(int i=1; i<=10; i++) {
	      String colors;
	      
	      if(i%2 == 0) {
	         out.println("<div class='circle2 blue'>"+ i+"</div>");
	      }
	      else {
	         out.println("<div class='circle2 red'>"+ i+"</div>");
	      }
	   }
	%>
	</div>
	<h3> 역순으로 나열 </h3>
	<div class = "container">
	
	<%
	   for(int j = 10; j >=1; j--) {%>
	      <div class="circle2 green"><%= j%></div>
	   <%}
	%>
	</div>
	<h3>2의 배수 역순 나열</h3>
	<div class='outbox'>
	<%
	for(int i = 20; i>=2; i-=2){
	%>
	
		<div class='inbox <%
		if(i%4==0){
			%>
			inbox_change
			<%
		}
		%>'><%=i %></div>
	
	<%
	}
	%>
	</div>

</body>
</html>