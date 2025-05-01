<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인페이지</title>
    <style>
        body {
            width: 100vw;
            height: 100vh;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;

            background-image: url('./이미지/해피냥이.gif');
            background-size: 100px 100px;
        }

        table {
            border-collapse: collapse;


        }

        th,
        td {

            padding: 3px 12px;


        }
        thead {
            font-size: 50px;
        }


        td:nth-child(1) {
            text-align: center;
            font-weight: bold;
        }

        td:nth-child(2) {
            text-align: start;
            width: 500px;
            padding-left: 0px;
            
        }

        thead {
            text-align: center;
            font-weight: bold;

            

        }
        [type=text] {
            width: 90%;
            height: 30px;

            font-size: 30px;
        }

      

        .out_box {

            border: 3px solid black;
            border-radius: 10%;

            display: flex;
            flex-direction: column;
            justify-self: start;
            align-items: center;

            overflow: hidden;

        }

        .in_box {
            background-color: rgba(255, 255, 255, 0.5);
            width: 100%;


        }


        .btn_box {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            gap: 10px;
            padding: 5px;

        }

       

        .btn_box>input {
            font-size: 20px;
        }
    </style>
</head>

<body>
<%
String user_id = request.getParameter("user_id");
String user_pw = request.getParameter("user_pw");
String user_email = request.getParameter("user_email");
String user_name = request.getParameter("user_name");

String[] user_num = request.getParameterValues("user_num");
String[] user_address = request.getParameterValues("user_address");
String[] user_birthday = request.getParameterValues("user_birthday");
String[] interest = request.getParameterValues("interest");
String introduce = request.getParameter("introduce");
%>
    <form>

        <div class="out_box">


            <div class="in_box">
                <table>
                    <thead>

                        <tr>
                            <td colspan="2">회원정보</td>


                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>아이디: </td>
                            <td>
                                <span><%=user_id %></span>
                                
                            </td>

                        </tr>
                        <tr>
                            <td>비밀번호: </td>
                            <td>
                                <span><%=user_pw %></span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>이메일: </td>
                            <td>
                                <span><%=user_email %></span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>이름: </td>
                            <td>
                                <span><%=user_name %></span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>주민등록번호: </td>
                            <td>
                                <span>
                                <%
                                for(int i = 0; i<user_num.length; i++){
                                %>
                                	<%=user_num[i] %>
                                <% } %>
                                </span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>주소: </td>
                            <td>
                                <span>
                                <%
                                for(int i = 0; i<user_address.length; i++){
                                %>
                                	<%=user_address[i] %>
                                <% } %>
                                </span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>생일: </td>
                            <td>
                                <span>
                                <%
                                for(int i = 0; i<user_birthday.length; i++){
                                %>
                                	<%=user_birthday[i] %>
                                <% } %>
                                </span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>취미: </td>
                            <td>
                                <span>
                                <%
                                for(int i = 0; i<interest.length; i++){
                                %>
                                	<%=interest[i] %>
                                <% } %>
                                </span>
                                
                            </td>
                        </tr>
                        <tr>
                            <td>자기소개: </td>
                            <td>
                                <span><%=introduce %></span>
                                
                            </td>
                        </tr>



                    </tbody>
                </table>
            </div>
            <div class="in_box">
                <div class="btn_box">
                    <input type="button" value="돌아가기" onclick="돌아가기()">
                </div>
            </div>

        </div>
    </form>


    <script>
        function 돌아가기(){
            window.open('./03_1_회원가입페이지.jsp');
        }


    </script>

</body>

</html>