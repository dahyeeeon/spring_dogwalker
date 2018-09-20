<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petusers/signup_form.jsp</title>
<style>
 .container{
      margin-top:140px;
   }
 footer{
       margin: 50px 0;
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
      <div class="contents-body">
      <div class="resvReq container">
         <form ng-submit="onSubmit($event)" ng-controller="formCtrl"
		action="signup.do" method="post" id="signupForm" name="signupForm"
		novalidate>
            
               <div class="center-column">
                  <div style="text-align:center;">
                     <h2> 유저 회원가입 페이지</h2>
                     <p>회원가입을 하시면 나와 맞는 도그 워커를 찾을 수 있어요.</p>
                  </div>
					<div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.id.$valid && canUseId ,'has-error': (signupForm.id.$invalid || !canUseId)&& signupForm.id.$dirty }">
						<p>
							<label class="control-label">아이디</label>
						</p>
						<div>
							<input type="text" id="id" class="input-req form-control"
								name="id" placeholder="아이디를 입력해주세요" ng-model="id"
								ng-required="true" ng-change="onIdInput()"
								ng-pattern="/^[a-zA-Z0-9]{2,8}$/" /> <span
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
					<div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.nickname.$valid && canUseNickname ,'has-error': (signupForm.nickname.$invalid || !canUseNickname) && signupForm.nickname.$dirty }">
						<p>
							<label class="control-label">닉네임</label>
						</p>
						<input type="text" id="nickname" class="input-req form-control" name="nickname" placeholder="닉네임을 입력해주세요" ng-model="nickname" ng-pattern="/^[\w가-힣]{2,8}$/" />
							 <span class="form-control-feedback glyphicon glyphicon-ok" ng-show="signupForm.nickname.$valid && canUseNickname"></span>
							 <span class="form-control-feedback glyphicon glyphicon-remove" ng-show="(signupForm.nickname.$invalid || !canUseNickname) && signupForm.nickname.$dirty"></span>
						<p class="help-block"ng-show="signupForm.nickname.$error.required && signupForm.nickname.$dirty">반드시 입력하세요.</p>
						<p class="help-block" ng-show="!canUseNickname && signupForm.nickname.$dirty">사용할 수 없는 닉네임입니다.</p>
						<p class="help-block" ng-show="signupForm.nickname.$error.pattern && signupForm.nickname.$dirty">2~8글자 한글, 영문, 숫자만 사용할 수 있습니다.</p>
					</div>

					<div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.pwd.$valid,'has-error': signupForm.pwd.$invalid && signupForm.pwd.$dirty }">
						<label class="control-label">비밀번호</label> <input type="password"
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
						
					</div>
						
					<div class="col-xl-12 form-group has-feedback" ng-class="{'has-success':signupForm.pwd2.$valid,'has-error': (signupForm.pwd2.$invalid || !isPwdEqual) && signupForm.pwd2.$dirty }">
						<label class="control-label">비밀번호 확인</label>
						<input type="password" class="input-req form-control" name="pwd2" ng-model="pwd2" ng-change="onPwdInput()" ng-required="true" placeholder="비밀번호를 한 번 더 입력해주세요" />
						<span class="form-control-feedback glyphicon glyphicon-ok"
							ng-show="signupForm.pwd2.$valid && isPwdEqual"></span> <span
							class="form-control-feedback glyphicon glyphicon-remove"
							ng-show="(signupForm.pwd2.$invalid || !isPwdEqual) && signupForm.pwd2.$dirty"></span>
						<p class="help-block"
							ng-show="signupForm.pwd2.$error.required && signupForm.pwd2.$dirty">반드시
							입력하세요</p>
						<p class="help-block"
							ng-show="!isPwdEqual && signupForm.pwd2.$dirty">똑같은 비밀번호를
							입력해주세요</p>
					</div>
					

					<div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.kakao.$valid ,'has-error': signupForm.kakao.$invalid && signupForm.kakao.$dirty }">
						<label class="control-label">카카오 아이디</label> <input type="text"
							id="kakao" class="input-req  form-control" name="kakao"
							placeholder="카카오아이디를 입력해주세요" ng-model="kakao" ng-required="true"
							ng-pattern="/^[\w]{2,8}$/" /> <span
							class="form-control-feedback glyphicon glyphicon-ok"
							ng-show="signupForm.kakao.$valid"></span> <span
							class="form-control-feedback glyphicon glyphicon-remove"
							ng-show="signupForm.kakao.$invalid && signupForm.kakao.$dirty"></span>
						<p class="help-block"
							ng-show="signupForm.kakao.$error.required && signupForm.kakao.$dirty">반드시
							입력하세요.</p>
						<p class="help-block"
							ng-show="signupForm.kakao.$error.pattern && signupForm.kakao.$dirty">2~8글자
							영문, 숫자만 사용할 수 있습니다.</p>
					</div>

					<div class="col-xl-12 form-group has-feedback"
						ng-class="{'has-success':signupForm.phone.$valid,'has-error': signupForm.phone.$invalid && signupForm.phone.$dirty }">
						<label class="control-label">휴대폰 번호</label> 
						<input
							class="phoneNumberCheck form-control" type="phone" name="phone"
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
					<div class="col-xl-12">
						<label class="control-label">주소</label>
						<input class="input-req" type="text" name="addr" id="addr"
						placeholder="주소를 입력해주세요" />
					</div>
					<br />
					
					<lagend>
					<p>
						<b>성별</b>
					</p>
					</lagend>
					<label> <input type="radio" name="sex" value="woman"
						checked="checked" />여자
					</label> <label> <input type="radio" name="sex" value="man"
						checked="checked" />남자
					</label> <br /> <br />
					<lagend>
					<p>
						<b>펫 소유</b>
					</p>
					</lagend>
					<label> <input type="radio" name="hasPet" value="yes"
						checked="checked" />예
					</label> <label> <input type="radio" name="hasPet" value="no"
						checked="checked" />아니요 <br />
					</label> <br /> <label for="myFile"><p>
							<b>이미지</b>
						</p></label> <input type="file" name="file" id="file" /> <br /> <br />
				</div>
			
			<button class="btn-main" id="btn" type="submit">가입하기</button>
			</form>
			</div>
		</div>
    </div>
    
<!-- Footer -->
 <footer class="text-center">
   <div class="container">
     Copyright &copy; Your Website 2018
     <a href="Service/serviceinfo.do">고객센터</a>
   </div>
 </footer>
 	<script src="${pageContext.request.contextPath }/resources/js/angular.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
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

</body>
</html>

