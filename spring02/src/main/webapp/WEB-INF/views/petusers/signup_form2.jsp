<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petusers/signup_form.jsp</title>
<style>
.nav>li{
   margin-right:80px;
}
a#MOVE_TOP_BTN {
    position: fixed;
    right: 2%;
    bottom: 50px;
    display: none;
    z-index: 998;
}
.resvReq {
   text-align: center;
   padding: 60px 0 180px;
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/bg_city.png");
   background-position: bottom;
   background-repeat: no-repeat;
   background-size: 100% auto;
}
.resvReq .p24 {
   font-size: 1.5rem;
   margin: 0 0 20px;
   color: #000;
}
@media ( max-width : 576px) {
   .resvReq .p24 {
      font-size: 1rem;
   }
}
.resvReq input {
   font-size: 1.25rem;
}
@media ( max-width : 576px) {
   .resvReq input {
      font-size: 1rem;
      background-position: center left 0.5rem;
      padding-left: 2.2rem;
   }
}
.resvReq .boarder-box {
   border: 2px solid #999;
   padding: 42px 75px 40px;
   margin: 40px 0;
   text-align: left;
}
@media ( max-width : 576px) {
   .resvReq .boarder-box {
      margin-left: 10px;
      margin-right: 10px;
      padding: 20px;
   }
}
.resvReq input[type=text] {
   display: table-cell;
   vertical-align: middle;
   outline: none;
   border: 1px solid #999;
   height: 50px;
   border-radius: 2px;
   padding-left: 5px;
   font-size: 1.25rem;
   vertical-align: middle;
   background-position: center left 1rem;
   background-repeat: no-repeat;
   margin: 0;
}
.resvReq input[type=text]:focus {
   outline: none;
   border-color: inherit;
   box-shadow: none;
}
@media ( max-width : 576px) {
   .resvReq input[type=text] {
      font-size: 1rem;
      background-position: center left 0.5rem;
      padding-left: 2.3rem;
   }
}
.datePicker input {
   width: 100%;
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/icon_field_cal.png");
}
.resvReq .leftItem {
   display: inline-block;
   width: 476px;
   margin: 0 76px 0 0;
}
.resvReq .rightItem {
   display: inline-block;
   width: 476px;
   margin: 0;
}
.input-btn-append {
   border: 1px solid #999;
   height: 50px;
   border-top-right-radius: 10px;
   border-bottom-right-radius: 10px;
   background-color: #0faca0;
   color: white;
   font-size: 0.875rem;
}
.input-btn-append:hover {
   cursor: pointer;
   background-color: #13dbcc;
}
.input-btn-append:disabled {
   background-color: #074e49;
}
.input-btn-append:focus {
   outline: none;
   background-color: #13dbcc;
}
.input-control[name=phone] {
   border-top: 1px solid #999;
   border-bottom: 1px solid #999;
   border-left: 1px solid #999;
   border-top-left-radius: 3px;
   border-bottom-left-radius: 3px;
   background:
      url("https://storage.googleapis.com/pefam-web-cdn/icon_field_phone.png");
   background-position: center left 2rem;
   background-repeat: no-repeat;
   padding-left: 75px;
}
@media ( max-width : 576px) {
   .input-control[name=phone] {
      font-size: 1rem;
      background-position: center left 0.5rem;
      padding-left: 2.3rem;
   }
}
.input-control[name=phone]:focus {
   outline: none;
   border-color: inherit;
   box-shadow: none;
}
.input-control[name=authNum], #sms-login .input-control[name=authNum] {
   border-top: 1px solid #999;
   border-bottom: 1px solid #999;
   border-left: 1px solid #999;
   border-top-left-radius: 3px;
   border-bottom-left-radius: 3px;
   background:
      url("https://storage.googleapis.com/pefam-web-cdn/icon_field_certi.png");
   background-position: center left 2rem;
   background-repeat: no-repeat;
   padding-left: 75px;
}
@media ( max-width : 576px) {
   .input-control[name=authNum], #sms-login .input-control[name=authNum] {
      font-size: 1rem;
      background-position: center left 0.5rem;
      padding-left: 2.3rem;
   }
}
.input-control[name=authNum]:focus, #sms-login .input-control:focus[name=authNum]
   {
   outline: none;
   border-color: inherit;
   box-shadow: none;
}
.input-name {
   width: 100%;
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/icon_field_name.png");
}
.input-req {
   width: 100%;
   outline: none;
   border: 1px solid #999;
   height: 50px;
   border-radius: 2px;
   font-size: 1rem;
}
@media ( max-width : 576px) {
   .input-req {
      font-size: 0.8rem;
   }
}
#sms-login .input-control[name=authNum] {
   border-right: 1px solid #999;
}
.auth-timer-box {
   position: relative;
}
.authTimer {
   position: absolute;
   right: 130px;
}
#sms-login .auth-timer-box {
   height: 50px;
}
#sms-login .authTimer {
   right: 20px;
}
.input-img-prepend {
   border-top: 1px solid #999;
   border-bottom: 1px solid #999;
   border-left: 1px solid #999;
   border-right: 0;
   border-top-left-radius: 0;
   border-bottom-left-radius: 0;
   background-color: transparent;
   padding-left: 30px;
}
.authTimer {
   vertical-align: middle;
   width: auto;
   height: 50px;
   margin: 0;
   line-height: 50px;
   color: #e43949;
   font-size: 0.875rem;
}
.resvReq h2 {
   font-size: 2rem;
}
@media ( max-width : 576px) {
   .resvReq h2 {
      font-size: 1.5rem;
   }
}
.resvReq .nameInput {
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/icon_field_name.png");
}
.resvReq input[type=checkbox]:before {
   content: "";
   display: inline-block;
   width: 30px;
   height: 30px;
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/check_box_off.png");
}
.resvReq input[type=checkbox]:checked:before {
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/check_box_on.png");
}
.resvReq .colorMain {
   color: #219fdf;
}
.resvReq .termTitles {
   min-height: 50px;
   margin: 0;
   padding: 0;
}
.resvReq .agreeAll {
   font-size: 1.25rem;
   line-height: 20px;
   font-weight: 800;
   color: #219fdf;
}
.resvReq .agreeAll :hover {
   cursor: pointer;
}
.resvReq a {
   font-size: 1.125rem;
   line-height: 20px;
   color: #333;
   margin-left: 20px;
   vertical-align: middle;
   vertical-align: -webkit-baseline-middle;
}
.btn-main {
   width: 90%;
   max-width: 776px;
   min-width: 200px;
   height: 60px;
   background-color: #4f837f ;
   color: #fff;
   font-size: 1.25rem;
   border: 2px solid #4f837f;
   border-radius: 500px;
   margin: 90px 10px 0;
}
@media ( max-width : 576px) {
   .btn-main {
      margin: 30px 10px 0;
   }
}
.btn-main:hover {
   cursor: pointer;
   background-color: #4f837f;
   border: 2px solid #4f837f;
}
.btn-main:disabled {
   background-color: #136087;
   border: 2px solid #39a1d7;
}
.btn-main:focus {
   outline: none;
   background-color: #4f837f;
   border: 2px solid #4f837f;
}
.btn-main a {
   text-decoration: none;
   color: #fff;
}
/** RESERVATION LIST **/
#reservation-list {
   border: 1px solid #000;
   margin-top: 20px;
}
.resvList {
   text-align: center;
   padding: 60px 0 180px;
   background-image:
      url("https://storage.googleapis.com/pefam-web-cdn/bg_city.png");
   background-position: bottom;
   background-repeat: no-repeat;
   background-size: 100% auto;
}
.resvList .resvItem {
   border-bottom: 1px solid #000;
   background-color: #fff;
   width: 100% auto;
   height: 80px;
   text-align: left;
   vertical-align: middle;
   position: relative;
   display: -ms-flexbox;
   display: flex;
   -ms-flex-align: center;
   align-items: center;
}
#reservation-list :last-child {
   border-bottom: none;
}
.resvItem .rounded-circle {
   width: 46px;
   max-width: 46px;
   height: 46px;
   max-height: 46px;
   margin: 0 6px;
   display: block;
}
.resvList .resvItem .emptyImg {
   background-color: #ccc;
}
.resvList h1 {
   font-size: 2rem;
   margin: 0 0 20px;
   color: #000;
}
@media ( max-width : 576px) {
   .resvList h1 {
      font-size: 1.5rem;
   }
}
.resvList p {
   font-color: #000;
   margin: 0;
   padding: 0;
}
.resvList .p14 {
   font-size: 0.875rem;
}
@media ( max-width : 576px) {
   .resvList .p14 {
      font-size: 0.7rem;
   }
}
.resvList .p18 {
   font-size: 1.125rem;
}
@media ( max-width : 576px) {
   .resvList .p18 {
      font-size: 1.0rem;
   }
}
.resvList .p24 {
   font-size: 1.5rem;
}
@media ( max-width : 576px) {
   .resvList .p24 {
      font-size: 1.1rem;
   }
}
.resvList .colorMain {
   color: #219fdf;
}
.resvList .grey666 {
   color: #666;
   margin: 0;
}
</style>
<!-- Bootstrap core CSS -->
<link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/dogwalker.css" />
</head>
<body ng-app="myApp">
<%@include file="../home_menu.jsp" %>
   <div class="container-fluid">
      <div class="contents-header"></div>
      <div class="contents-body">
         <form ng-submit="onSubmit($event)" ng-controller="formCtrl"
		action="signup.do" method="post" id="signupForm" name="signupForm"
		novalidate>
            <div class="resvReq">
               <div class="center-column">
                  <h1>
                     <strong> 유저 회원가입 페이지</strong>
                  </h1>
                  <p class="class">회원가입을 하시면 나와 맞는 도그 워커를 찾을 수 있어요.</p>
                  <div class="boarder-box col-xl-12 form-group has-feedback" ng-class="{'has-success':signupForm.id.$valid && canUseId ,'has-error': (signupForm.id.$invalid || !canUseId)&& signupForm.id.$dirty }">
                     <p class="p24 control-label">
                        <b>아이디</b>
                     </p>
                     <div class="col-xl-12 ">
                        <div>
                           <input class="input-req form-control" type="text" id="id" name="id"
                              placeholder="아이디를 입력해주세요" ng-model="id"
								ng-required="true" ng-change="onIdInput()"
								ng-pattern="/^[a-zA-Z0-9]{2,8}$/"> <span
								class="form-control-feedback glyphicon glyphicon-ok"
								ng-show="signupForm.id.$valid && canUseId"></span> <span
								class="form-control-feedback glyphicon glyphicon-remove"
								ng-show="(signupForm.id.$invalid || !canUseId) && signupForm.id.$dirty"></span>
							<p class="help-block"
								ng-show="signupForm.id.$error.required && signupForm.id.$dirty">반드시
								입력하세요.</p>
							<p class="help-block" ng-show="!canUseId && signupForm.id.$dirty">사용할
								수 없는 아이디입니다.</p>
							<p class="help-block"
								ng-show="signupForm.id.$error.pattern && signupForm.id.$dirty">2~8글자
								영문, 숫자만 사용할 수 있습니다.</p>
                        </div>
                     </div>
                     <div class="col-xl-12 form-group has-feedback" ng-class="{'has-success':signupForm.nickname.$valid && canUseNickname ,'has-error': (signupForm.nickname.$invalid || !canUseNickname) && signupForm.nickname.$dirty }">
                        <p class="p24 control-label">
                           <b>닉네임</b>
                        </p>
                        <input class="input-req form-control" type="text" name="nickname" id="nickname"
                           placeholder="닉네임을 입력해주세요" ng-model="nickname"
							ng-required="true" ng-change="onNicknameInput()"
							ng-pattern="/^[\w가-힣]{2,8}$/" /><span
							class="form-control-feedback glyphicon glyphicon-ok"
							ng-show="signupForm.nickname.$valid && canUseNickname"></span> <span
							class="form-control-feedback glyphicon glyphicon-remove"
							ng-show="(signupForm.nickname.$invalid || !canUseNickname) && signupForm.nickname.$dirty"></span>
						<p class="help-block"
							ng-show="signupForm.nickname.$error.required && signupForm.nickname.$dirty">반드시
							입력하세요.</p>
						<p class="help-block"
							ng-show="!canUseNickname && signupForm.nickname.$dirty">사용할 수
							없는 닉네임입니다.</p>
						<p class="help-block"
							ng-show="signupForm.nickname.$error.pattern && signupForm.nickname.$dirty">2~8글자
							한글, 영문, 숫자만 사용할 수 있습니다.</p><br />
                     </div>
                     <!-- 비밀번호 -->
                     <div class="col-xl-12 form-group has-feedback" ng-class="{'has-success':signupForm.pwd.$valid,'has-error': (signupForm.pwd.$invalid || !isPwdEqual) && signupForm.pwd.$dirty }">
                        <p class="p24 control-label">
                           <b>비밀번호</b>
                        </p>
                        <input type="password"
							class="input-req form-control" name="pwd" ng-model="pwd"
							placeholder="비밀번호를 입력해주세요" ng-required="true"
							ng-change="onPwdInput()"
							ng-pattern="/^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/" />
						<span class="form-control-feedback glyphicon glyphicon-ok"
							ng-show="signupForm.pwd.$valid && isPwdEqual"></span> <span
							class="form-control-feedback glyphicon glyphicon-remove"
							ng-show="(signupForm.pwd.$invalid || !isPwdEqual) && signupForm.pwd.$dirty"></span>
						<p class="help-block"
							ng-show="signupForm.pwd.$error.required && signupForm.pwd.$dirty">반드시
							입력하세요</p>
						<p class="help-block"
							ng-show="signupForm.pwd.$error.pattern && signupForm.pwd.$dirty">특수문자,
							영문, 숫자 포함 형태의 8~15자리 이내의 암호를 입력하세요</p>
						<p class="help-block"
							ng-show="!isPwdEqual && signupForm.pwd.$dirty">똑같은 비밀번호를
							입력해주세요</p><br />
                     </div>
                      <!-- 비밀번호 확인-->
                     <div class="col-xl-12 form-group has-feedback" ng-class="{'has-success':isPwdEqual,'has-error': !isPwdEqual && f.pwd.$dirty }">
                        <p class="p24 control-label">
                           <b>비밀번호 확인</b>
                        </p>
                        <input type="password" class="input-req form-control" ng-model="pwd2"
							ng-change="onPwdInput()" placeholder="비밀번호를 한 번 더 입력해주세요" /><br />
                     </div>
                     
                     <div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.kakao.$valid ,'has-error': signupForm.kakao.$invalid && signupForm.kakao.$dirty }">
                        <p class="p24 control-label">
                           <b>카카오 아이디</b>
                        </p>
                        <input type="text" id="kakao" class="input-req form-control" name="kakao"
							placeholder="카카오아이디를 입력해주세요" ng-model="kakao" ng-required="true"
							ng-pattern="/^[\w]{2,8}$/"/> <span
							class="form-control-feedback glyphicon glyphicon-ok"
							ng-show="signupForm.kakao.$valid"></span> <span
							class="form-control-feedback glyphicon glyphicon-remove"
							ng-show="signupForm.kakao.$invalid && signupForm.kakao.$dirty"></span>
						<p class="help-block"
							ng-show="signupForm.kakao.$error.required && signupForm.kakao.$dirty">반드시
							입력하세요.</p>
						<p class="help-block"
							ng-show="signupForm.kakao.$error.pattern && signupForm.kakao.$dirty">2~8글자
							영문, 숫자만 사용할 수 있습니다.</p><br />
							
							
					<div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.phone.$valid,'has-error': signupForm.phone.$invalid && signupForm.phone.$dirty }">
                        <p class="control-label">
                           <b>휴대폰 번호</b>
                        </p>
                        <input
							class="phoneNumberCheck input-req" type="phone" name="phone"
							id="phone" placeholder="휴대폰번호를 입력해주세요" ng-model="phone"
							ng-required="true"
							ng-pattern="/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/" /><br />
							<span class="form-control-feedback glyphicon glyphicon-ok"
							ng-show="signupForm.phone.$valid"></span> <span
							class="form-control-feedback glyphicon glyphicon-remove"
							ng-show="signupForm.phone.$invalid && signupForm.phone.$dirty"></span>
						<p class="help-block"
							ng-show="signupForm.phone.$error.required && signupForm.phone.$dirty">반드시
							입력하세요.</p>
						<p class="help-block"
							ng-show="signupForm.phone.$error.pattern && signupForm.phone.$dirty">10,
							11자리숫자만 사용할 수 있습니다.</p>
                     </div>
                     
                     <div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.phone.$valid,'has-error': signupForm.phone.$invalid && signupForm.phone.$dirty }">
                     <p class="p24">
                        <b>주소</b>
                     </p>
                     <input class="input-req" type="text" name="addr" id="addr" placeholder="주소를 입력해주세요" /><br />
                     
                     <lagend><p class="p24"><b>성별</b></p></lagend>
                     <label> <input type="radio" name="sex"
                        value="woman" checked="checked" />여자
                     </label> <label> <input type="radio" name="sex"
                        value="man" checked="checked" />남자
                     </label> <br />
                      <br />
                     <lagend><p class="p24"><b>펫 소유</b></p></lagend>
                     <label> <input type="radio" name="hasPet"
                        value="yes" checked="checked" />예
                     </label> <label> <input type="radio" name="hasPet"
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

<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/places.js@1.9.0"></script>
	<script>
		var app = angular.module("myApp", []);
		app.controller(
						"formCtrl",
						function($scope, $http) {
							$scope.canUseId = false;
							//아이디를 입력했을때 호출되는 함수 
							$scope.onIdInput = function() {
								//입력한 내용을 서버에 ajax 요청을 통해서 보낸다. 
								$http({
											url : "checkid.do",
											method : "post",
											data : "inputId=" + $scope.id,
											headers : {
												"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
											}
										}).success(function(data) {
									$scope.canUseId = data.canUse;
								});
							};
							$scope.canUseNickname = false;
							//닉네임을 입력했을때 호출되는 함수
							$scope.onNicknameInput = function() {
								//입력한 내용을 서버에 ajax 요청을 통해서 보낸다. 
								$http({
											url : "checknickname.do",
											method : "post",
											data : "inputNickname="
													+ $scope.nickname,
											headers : {
												"Content-Type" : "application/x-www-form-urlencoded;charset=utf-8"
											}
										}).success(function(data) {
									$scope.canUseNickname = data.canUse;
								});
							};
							//두개의 비밀번호를 같게 입력했는지 여부 
							$scope.isPwdEqual = false;
							//비밀번호를 입력했을때 호출되는 함수 
							$scope.onPwdInput = function() {
								if ($scope.pwd == $scope.pwd2) {
									$scope.isPwdEqual = true;
								} else {
									$scope.isPwdEqual = false;
								}
							};

							//폼 전송 이벤트가 발생했을때 호출되는 함수
							$scope.onSubmit = function(e) {
								//폼이 유효하지 않으면 
								if ($scope.signupForm.$invalid
										|| !$scope.canUseId
										|| !$scope.canUseNickname
										|| !$scope.isPwdEqual) {
									//폼 전송 이벤트 막기
									e.preventDefault();
								}
							};

						});
		//유효한 전화번호인지 검사
		$(function(){
		    $(".phoneNumberCheck").on('keydown', function(e){
		       // 숫자만 입력받기
		        var trans_num = $(this).val().replace(/-/gi,'');
		       
			var k = e.keyCode;
						
			if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
			{
		  	    e.preventDefault();
			}
		    }).on('blur', function(){ // 포커스를 잃었을때 실행합니다.
		        if($(this).val() == '') return;
		 
		        // 기존 번호에서 - 를 삭제합니다.
		        var trans_num = $(this).val().replace(/-/gi,'');
		      
		        // 입력값이 있을때만 실행합니다.
		        if(trans_num != null && trans_num != '')
		        {
		            // 총 핸드폰 자리수는 11글자이거나, 10자여야 합니다.
		            if(trans_num.length==11 || trans_num.length==10) 
		            {   
		                // 유효성 체크
		                var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
		                if(regExp_ctn.test(trans_num))
		                {
		                    // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿔줍니다.
		                    trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
		                    $(this).val(trans_num);
		                }
		                else
		                {
		                    alert("유효하지 않은 전화번호 입니다.");
		                    $(this).val("");
		                    $(this).focus();
		                }
		            }
		            else 
		            {
		                alert("유효하지 않은 전화번호 입니다.");
		                $(this).val("");
		                $(this).focus();
		            }
		      }
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