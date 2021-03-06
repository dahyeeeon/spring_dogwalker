<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petusers/info.jsp</title>
<style>
.bottomCol {
	border-top: 3px solid #64a19d;
	margin: 0 auto;
}
footer {
	margin-top: 90px;
}
</style>
<link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/dogwalker.css" />
<link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/grayscale.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body style="margin-top: 120px">
	<%@include file="../home_menu.jsp"%>
	<div class="container">
		<div style="text-align: center;">
			<h2>${id }님의 마이페이지</h2>
			<p>내 정보와 예약 목록을 볼 수 있습니다.</p>
		</div>
		<div class="row" style="margin-top: 60px;">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad">
				<div class="panel panel-info">
					<div class="panel-heading panel_update">
						<h3 class="panel-title">${id }님의개인정보</h3>
					</div>
					<div class="row">
						<div class="col-md-3 col-lg-3 " align="center">
							<c:choose>
								<c:when test="${dto.imagePath != null}">
									<img src="${pageContext.request.contextPath }${dto.imagePath}"
										class="img-responsive img-thumbnail"
										style="width: 120px; height: 120px" />
								</c:when>
								<c:otherwise>
									<img src="http://www.tangoflooring.ca/wp-content/uploads/2015/07/user-avatar-placeholder.png" style="width: 100px;" />
								</c:otherwise>
							</c:choose>
						</div>
						<br />
						<div class=" col-md-9 col-lg-9 ">
							<table class="table table-user-information">
								<tbody>
									<tr>
										<td>아이디</td>
										<td>${dto.id }</td>
									</tr>
									<tr>
										<td>카카오 아이디</td>
										<td>${dto.kakao }</td>
									</tr>
									<tr>
										<td>닉네임</td>
										<td>${dto.nickname }</td>
									</tr>

									<tr>
										<td>성별</td>
										<td>${dto.sex }</td>
									</tr>
									<tr>
										<td>집주소</td>
										<td>${dto.addr }</td>
									</tr>
									<tr>
										<td>휴대폰번호</td>
										<td>${dto.phone }</td>
									</tr>
									<tr>
										<td>가입일</td>
										<td>${dto.regdate }</td>
									</tr>
									<tr>
										<td>펫유무</td>
										<td>${dto.hasPet }</td>
									</tr>

								</tbody>
							</table>
							<div align="center">
								<a href="updateform.do" class="btn_update">회원정보 수정</a> 
								<a href="javascript:deleteConfirm()" class="btn_update">회원탈퇴</a>
								<a href="reservation.do?nickname=${dto.nickname }" class="btn_update">예약보기</a>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	function deleteConfirm(){
		var isDelete = confirm("회원 탈퇴 하시겠습니까?");
		if (isDelete){
			location.href = "delete.do";
		}
	}
</script>
 <%@include file="../home_footer.jsp"%>
</body>
</html>