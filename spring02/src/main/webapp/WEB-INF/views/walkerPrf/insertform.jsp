<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Lets Run!</title>
<link
	href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/grayscale.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
	
<style>
.row {
	border: 3px solid #64a19d;
	 margin: 0 auto;
	
}
fieldset {
    min-width: 0;
    padding: 0;
    margin: auto;
    border: 0;
}
label{
	text-align: center;
}
</style>
</head>
<body style="margin-top: 180px">
<%@include file="../home_menu.jsp" %>
	<div class="container">
	<form action="insert.do" method="post">
		<div class="row">
			<fieldset>

			

			
				<legend></legend>
				<p>신청자 정보 </p>
				<label for="id"></label> <input type="text" name="id" id="id"
					placeholder="아이디 입력" /><br> <label for="kakao"></label> <input
					type="text" name="kakao" id="kakao" placeholder="카카오 아이디 입력" /><br>
				<label for="nickname"></label> <input type="text" name="nickname"
					id="nickname" placeholder="닉네임 입력" /><br />
					
				</fieldset>
				
		</div>
		<br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>개 크기</p>
				<label for="dogSize">소형</label> <input type="radio" name="dogSize"
					value="small" /> <label for="dogSize">중형</label> <input
					type="radio" name="dogSize" value="middle" /> <label for="dogSize">대형</label>
				<input type="radio" name="dogSize" value="big" />
			</fieldset>

		</div><br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>예약 가능한 날짜</p>
				<label for="selectDate">날짜 선택</label> <input type="date"
					name="selectDate" value="rsvDate" />
			</fieldset>

		</div><br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>예약 가능한 시간</p>
				<label for="timeSlot">시간대 선택</label><br /> <select name="timeSlot"
					id="timeSlot">
					<option value="">--선택--</option>
					<option value="morning">아침</option>
					<option value="afternoon">점심</option>
					<option value="evening">저녁</option>
					<option value="night">밤</option>
				</select> <br />
			</fieldset>

		</div><br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>펫 캠</p>
				<label for="cctv">펫 캠 옵션</label> <br /> <select name="cctv"
					id="cctv">
					<option value="">--선택--</option>
					<option value="true">옵션 추가</option>
					<option value="false">옵션 추가하지 않음</option>

				</select> <br />
			</fieldset>

		</div><br /><br />
		
		<button type="submit" style="margin: 0 auto;">추가</button>
</form>		

	</div>
<%@include file="../home_footer.jsp" %>	
</body>
</html>