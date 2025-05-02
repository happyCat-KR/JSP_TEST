<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
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
<form action="loginProcess.jsp" method="get">
        <div class="out_box">


            <div class="in_box">
                <table>
                    <thead>

                        <tr>
                            <td colspan="2">로그인</td>


                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>아이디: </td>
                            <td>
                                <input type="text" name="user_id" id="user_id" />
                                
                            </td>

                        </tr>
                        <tr>
                            <td>비밀번호: </td>
                            <td>
                                <input type="text" name="user_pw" id="user_pw" />
                                
                            </td>



                    </tbody>
                </table>
            </div>
            <div class="in_box">
                <div class="btn_box">
                    <input type="submit" value="로그인">
                    <input type="reset" value="다시입력">
                </div>
            </div>

        </div>
    </form>


</body>
</html>