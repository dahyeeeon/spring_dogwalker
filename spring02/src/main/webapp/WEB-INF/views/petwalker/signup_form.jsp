<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petwalker/signup_form.jsp</title>
</head>
<body>
<h3>회원 가입 페이지 입니다.</h3>
<form action="signup.do" method="post" id="signupForm" enctype="multipart/form-data">
	<label for="id">아이디</label>
	<input type="text" name="id" id="id"/>
	<span id="checkResult"></span>
	<br/>
	<label for="nickname">닉네임</label>
	<input type="text" name="nickname" id="nickname"/><br/>
	<label for="pwd">비밀번호</label>
	<input type="text" name="pwd" id="pwd"/><br/>
	<label for="kakao">카카오아이디</label>
	<input type="text" name="kakao" id="kakao"/><br/>
	<label for="phone">휴대폰번호</label>
	<input type="text" name="phone" id="phone"/><br/>
	<label for="addr">주소</label>
	<input type="text" name="addr" id="addr"/><br/>
	<lagend>성별</lagend>
	<label>
		<input type="radio" name="sex" id="sex" value="woman" checked="checked"/>여자
	</label>
	<label>
		<input type="radio" name="sex" id="sex" value="man" checked="checked"/>남자
	</label>
	<br />
	<lagend>펫 소유</lagend>
	<label>
		<input type="radio" name="hasPet" id="hasPet" value="yes" checked="checked"/>예
	</label>
	<label>
		<input type="radio" name="hasPet" id="hasPet" value="no" checked="checked"/>아니요
	</label>
	<br/>
	<label for="myFile">이미지</label>
	<input type="file" name="file" id="file" /><br/>
	<button type="submit">가입</button>
</form>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>	
<script>
	//폼의 유효성 여부
	var formValid=false;
	
	$("#signupForm").submit(function(){
		//만일 폼의 유효성 여부가 false 이면 
		if(formValid==false){
			return false;//폼 전송 막기
		}
	});
	
	//아이디 입력란에 입력했을때 실행할 함수 등록 
	$("#id").on("input", function(){
		//입력한 아이디를 읽어와서
		var inputId=$(this).val();
		//ajax 요청을 이용해서 서버에 보낸다.
		$.ajax({
			url:"checkid.do",
			method:"post",
			data:{"inputId":inputId},
			success:function(responseData){
				//뭐가 응답되는지 콘솔에 출력해 보기 
				console.log(responseData);
				// responseData 는 object 이다.
				// {canUse:true} 또는 {canUse:false}
				if(responseData.canUse){
					formValid=true;
					$("#checkResult")
					.text("사용가능")
					.css("color","#00ff00");
				}else{
					formValid=false;
					$("#checkResult")
					.text("사용불가")
					.css("color","#ff0000");
				}
			}
		});
	});
</script>
</body>
</html>
