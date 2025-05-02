<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입페이지</title>
    <style>
        body {
            width: 100vw;
            height: 100vh;
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;

            background-image: url('./이미지/사과냥이.gif');
            background-size: 100px 100px;
        }

        table {
            border-collapse: collapse;


        }

        th,
        td {

            padding: 3px 12px;


        }


        td:nth-child(1) {
            text-align: center;
        }

        td:nth-child(2) {
            text-align: start;
            width: 500px;
            padding-left: 0px;
        }

        thead {
            text-align: center;
            font-weight: bold;

            font-size: 30px;

        }

        tfoot>tr>td {
            height: 120px;
        }

        [id=introduce] {
            width: 80%;
            height: 100%;
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
            width: 100%


        }


        .btn_box {
            display: flex;
            flex-direction: row;
            justify-content: center;
            align-items: center;
            gap: 10px;
            padding: 5px;
            

        }

        [name='user_num'] {
            width: 80px;
        }

        [name='user_birthday'] {
            width: 30px;
        }

        .btn_box>input {
            font-size: 20px;
        }
    </style>
</head>

<body>
    <form action="registerProcess.jsp" method="post">

        <div class="out_box">


            <div class="in_box">
                <table>
                    <thead>

                        <tr>
                            <td colspan="2">회원 기본 정보</td>


                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>아이디: </td>
                            <td>
                                <input type="text" id="user_id" name="user_id"/>
                                4~12자의 영문대소문자의 숫자로만 입력
                            </td>

                        </tr>
                        <tr>
                            <td>비밀번호: </td>
                            <td>
                                <input type="text" id="user_pw" name="user_pw"/>
                                4~12자의 영문대소문자의 숫자로만 입력
                            </td>

                        </tr>
                        <tr>
                            <td>비밀번호 확인: </td>
                            <td>
                                <input type="text" id="user_pw_check" />
                            </td>

                        </tr>
                        <tr>
                            <td>메일주소: </td>
                            <td>
                                <input type="text" id="user_email" name="user_email"/>
                                예&#41; id@domain.com
                            </td>

                        </tr>
                        <tr>
                            <td>이름: </td>
                            <td>
                                <input type="text" id="user_name" name="user_name"/>
                            </td>

                        </tr>

                    </tbody>
                </table>
            </div>
            <div class="in_box">
                <table>
                    <thead>

                        <tr>
                            <td colspan="2">개인 신상 정보</td>


                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>주민등록번호: </td>
                            <td>
                                <input type="text" name="user_num" />-
                                <input type="text" name="user_num" />
                                예&#41; 980522-1234567
                            </td>

                        </tr>
                        <tr>
                            <td>주소: </td>
                            <td>
                                <input type="text" name="user_address" id="sample6_postcode" placeholder="우편번호">
                                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                                <input type="text" name="user_address" id="sample6_address" placeholder="주소"><br>
                                <input type="text" name="user_address" id="sample6_detailAddress" placeholder="상세주소">
                                <input type="text" name="user_address" id="sample6_extraAddress" placeholder="참고항목">
                            </td>

                            

                        </tr>
                        <tr>
                            <td>생일: </td>
                            <td>
                                <input type="text" name="user_birthday" id="year" />년
                                <input type="text" name="user_birthday" id="month" />월
                                <input type="text" name="user_birthday" id="date" />일
                                <input type="button" value="생년월일적용" onclick="생년월일적용()">
                            </td>
                        </tr>
                        <tr>
                            <td>관심분야: </td>
                            <td>
                                <input type="checkbox" name="interest" value="컴퓨터" />컴퓨터
                                <input type="checkbox" name="interest" value="인터넷" />인터넷
                                <input type="checkbox" name="interest" value="여행" />여행
                                <input type="checkbox" name="interest" value="영화감상" />영화감상
                                <input type="checkbox" name="interest" value="음악감상" />음악감상
                            </td>

                        </tr>

                    </tbody>
                    <tfoot>

                        <tr>
                            <td>자기소개: </td>
                            <td>
                                <input type="text" id="introduce" name="introduce" placeholder="10자이상 입력" />
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="in_box">
                <div class="btn_box">
                    <input type="button" value="회원가입" onclick="회원가입(event)"/>
                    <input type="reset" value="다시입력"/>
                    <input type="button" value="로그인" onclick="로그인페이지가기()" />
                </div>
            </div>

        </div>
    </form>

    <script>
        function 로그인페이지가기() {
            window.open('./login.jsp');
        }
    </script>


    <script>
        const user_id = document.getElementById('user_id');
        const user_pw = document.getElementById('user_pw');
        const user_pw_check = document.getElementById('user_pw_check');
        const user_email = document.getElementById('user_email');
        const user_name = document.getElementById('user_name');

        const user_num = document.getElementsByName('user_num');
        const user_address = document.getElementsByName('user_address');
        const user_birthday = document.getElementsByName('user_birthday');
        const interest = document.getElementsByName('interest');
        const introduce = document.getElementById('introduce');

        function 생년월일적용() {
            let auto_birthday = user_num[0].value;

            for (let i = 0; i < auto_birthday.length; i++) {
                if (i < 2) {
                    user_birthday[0].value += auto_birthday[i] + '';
                } else if (i < 4) {
                    user_birthday[1].value += auto_birthday[i] + '';
                } else if (i < 6) {
                    user_birthday[2].value += auto_birthday[i] + '';
                }


            }



        }

        function 회원가입(e) {
            
            let user_id_len = user_id.value.length;
            let user_pw_len = user_pw.value.length;
            let num_result = [];
            let day_result = [];
            let inst_result = [];
            let email_check = true;
            let add_check = false;
            let day_check = false;
            
            // 복수 데이터값 배열 만들기
            for (num of user_num) {
                num_result.push(num.value);
            }
            
            for (d of user_birthday) {
                day_result.push(d.value);

                if (d.value === '') {
                    day_check = true;
                }
            }
            
            for (bd of interest) {
                if (bd.checked) {
                    inst_result.push(bd.value);
                }
            }
            
            for (ec of user_email.value) {
                if (ec === '@') {
                    email_check = false;
                }
            }
            
            
            

            
            // 유효성 검사(아이디, 비번 자릿수),(비밀번호 확인), 메일주소'@'확인
            if (user_id_len < 4 || user_id_len > 12) {
                return alert('아이디를 4~12자의 영문대소문자의 숫자로만 입력하세요');
            }
            if (user_pw_len < 4 || user_pw_len > 12) {
                return alert('비밀번호를 4~12자의 영문대소문자의 숫자로만 입력하세요');
            }
            if (user_pw.value != user_pw_check.value) {
                return alert('입력한 비밀번호가 일치하지 않습니다!');
            }
            if (email_check) {
                return alert('이메일에 @가 없습니다!');
            }
            if (user_name.value === '') {
                return alert('이름을 입력해주세요!');
            }
            if (user_num[0].value.length != 6 || user_num[1].value.length != 7) {
                return alert('주민등록번호가 유효하지 않습니다.');
            }
            if (user_address[0].value.length == 0) {
                return alert('주소를 입력해주세요!');
            }
            if (user_address[1].value.length == 0) {
                return alert('주소를 입력해주세요!');
            }
            if (user_address[2].value.length == 0) {
                return alert('주소를 입력해주세요!');
            }
            if (day_check) {
                return alert('생일을 입력해주세요!');
            }

            if (inst_result.length === 0) {
                return alert('관심분야를 체크해주세요');
            }
            if (introduce.value.length <= 10) {
                return alert('자기소개를 10자 이상으로 작성해주세요');
            }
			e.target.type = 'submit';

        }


    </script>


    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function sample6_execDaumPostcode() {
            new daum.Postcode({
                oncomplete: function (data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var addr = ''; // 주소 변수
                    var extraAddr = ''; // 참고항목 변수

                    //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                    if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        addr = data.roadAddress;
                    } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        addr = data.jibunAddress;
                    }

                    // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                    if (data.userSelectedType === 'R') {
                        // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                        // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                        if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                            extraAddr += data.bname;
                        }
                        // 건물명이 있고, 공동주택일 경우 추가한다.
                        if (data.buildingName !== '' && data.apartment === 'Y') {
                            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                        }
                        // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                        if (extraAddr !== '') {
                            extraAddr = ' (' + extraAddr + ')';
                        }
                        // 조합된 참고항목을 해당 필드에 넣는다.
                        document.getElementById("sample6_extraAddress").value = extraAddr;

                    } else {
                        document.getElementById("sample6_extraAddress").value = '';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('sample6_postcode').value = data.zonecode;
                    document.getElementById("sample6_address").value = addr;
                    // 커서를 상세주소 필드로 이동한다.
                    document.getElementById("sample6_detailAddress").focus();
                }
            }).open();
        }
    </script>

</body>

</html>