<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petwalker/signup_form.jsp</title>
<!-- 정규식으로 수정하기!! 아직 안했음 -->
<style>
.container {
	margin-top: 140px;
}

footer {
	margin: 50px 0;
}

.boarder-box {
	padding: 42px 75px 40px;
	text-align: left;
	background-color: #fff;
	border: 2px solid #999;
}

.control-label {
	font-size: 1.70rem;
}

.radio-label {
	font-size: 1.20rem;
}

.btn-main {
	width: 20%;
	max-width: 776px;
	min-width: 200px;
	height: 60px;
	background-color: #4f837f;
	color: #fff;
	font-size: 1.70rem;
	border: 2px solid #4f837f;
	margin: 90px 10px 0;
}
</style>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/resources/css/bootstrap.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/dogwalker.css" />
<meta charset="UTF-8">
</head>
<body>
<%@include file="../home_menu.jsp" %>
   <div class="container container-fluid">
      <div class="contents-header"></div>
      <div class="contents-body">
         <form action="signup.do" method="post" id="signupForm"
            enctype="multipart/form-data">
            <div class="resvReq">
               <div class="center-column">
                  <h1>
                     <strong>도그 워커 회원가입 페이지입니다.</strong>
                  </h1>
                  <p class="class">회원가입을 하시면 도그 워커가 될 수 있습니다.</p>
                  <div class="boarder-box">
                     <p class="p24">
                        <b>아이디</b>
                     </p>
                     <div class="col-xl-12">
                        <div>
                           <input class="input-req" type="text" id="id" name="id"
                              placeholder="아이디를 입력해주세요"> <span id="checkResult"></span>
                        </div>
                     </div>
                     <div class="col-xl-12">
                        <p class="p24">
                           <b>닉네임</b>
                        </p>
                        <input class="input-req" type="text" name="nickname" id="nickname"
                           placeholder="닉네임을 입력해주세요" /><br />
                     </div>
                     <div class="col-xl-12">
                        <p class="p24">
                           <b>비밀번호</b>
                        </p>
                        <input class="input-req" type="text" name="pwd" id="pwd"
                           placeholder="비밀번호를 입력해주세요" /><br />
                     </div>
                     <div class="col-xl-12">
                        <p class="p24">
                           <b>카카오 아이디</b>
                        </p>
                        <input class="input-req" type="text" name="kakao" id="kakao"
                           placeholder="카카오아이디를 입력해주세요" /><br />

                        <p class="p24">
                           <b>휴대폰 번호</b>
                        </p>
                        <input class="input-req" type="text" name="phone" id="phone"
                           placeholder="휴대폰번호를 입력해주세요" /><br />
                     </div>
                     <p class="p24">
                        <b>주소</b>
                     </p>
                     <input class="input-req" type="text" name="addr" id="input_address" placeholder="주소를 입력해주세요" /><br />
                     <lagend><p class="p24"><b>성별</b></p></lagend>
                     <label> <input type="radio" name="sex" id="sex"
                        value="woman" checked="checked" />여자
                     </label> <label> <input type="radio" name="sex" id="sex"
                        value="man" checked="checked" />남자
                     </label> <br />
                      <br />
                     <lagend><p class="p24"><b>펫 소유</b></p></lagend>
                     <label> <input type="radio" name="hasPet" id="hasPet"
                        value="yes" checked="checked" />예
                     </label> 
                     <label> <input type="radio" name="hasPet" id="hasPet"
                        value="no" checked="checked" />아니요
                        <br />
                     </label> <br /> <label for="myFile"><p class="p24"><b>이미지</b></p></label> <input type="file"
                        name="file" id="file" /> <br />
                        <br />
                  </div>
               </div>
               <button class="btn-main" id="btn" type="submit">가입하기</button>
            </div>
         </form>
      </div>
   </div>



   <script
      src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
   <script>
      //폼의 유효성 여부
      var formValid = false;
      $("#signupForm").submit(function() {
         //만일 폼의 유효성 여부가 false 이면 
         if (formValid == false) {
            return false;//폼 전송 막기
         }
      });
      //아이디 입력란에 입력했을때 실행할 함수 등록 
      $("#id").on("input", function() {
         //입력한 아이디를 읽어와서
         var inputId = $(this).val();
         //ajax 요청을 이용해서 서버에 보낸다.
         $.ajax({
            url : "checkid.do",
            method : "post",
            data : {
               "inputId" : inputId
            },
            success : function(responseData) {
               //뭐가 응답되는지 콘솔에 출력해 보기 
               console.log(responseData);
               // responseData 는 object 이다.
               // {canUse:true} 또는 {canUse:false}
               if (responseData.canUse) {
                  formValid = true;
                  $("#checkResult").text("사용가능").css("color", "#00ff00");
               } else {
                  formValid = false;
                  $("#checkResult").text("사용불가").css("color", "#ff0000");
               }
            }
         });
      });
   </script>
   <script>
		$(function() {
			var placesAutocomplete = places({
				container : document.querySelector('#input_address')
			});
		});
	</script>
   
   <script>
	   $(function() {
	       var placesAutocomplete = places({
	         container: document.querySelector('#input_address')
	       });
	  });

   
   </script>
   
   

	<script src="https://cdn.jsdelivr.net/npm/places.js@1.9.0"></script>
 	  
</body>
</html>