<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petwalker/info.jsp</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
<h3>개인 정보 입니다.</h3>
<table>
	<thead>
	<tr>
		<th>프사</th>
		<th> 
		<img src="${pageContext.request.contextPath }/${dto.imagePath}"  class="img-responsive img-thumbnail"
		style="width:100px; height:100px"/>
		</th>
		<th><a href="profileform.do">도그워커프로필 입력</a>
		<p>도그워커 디테일에 들어갈 소개 입력 및 수정</p></th>
	</tr>
		<tr>
			<th>항목</th>
			<th>정보</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th>아이디</th>
			<td>${dto.id }</td>
		</tr>
		<tr>
			<th>카카오ID</th>
			<td>${dto.kakao }</td>
		</tr>
		<tr>
			<th>닉네임</th>
			<td>${dto.nickname }</td>
		</tr>
		<tr>
			<th>휴대폰번호</th>
			<td>${dto.phone }</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>${dto.addr }</td>
		</tr>	
		<tr>
			<th>성별</th>
			<td>${dto.sex }</td>
		</tr>
		<tr>
			<th>펫소유</th>
			<td>${dto.hasPet }</td>
		</tr>	
		<tr>
			<th>가입일</th>
			<td>${dto.regdate }</td>
		</tr>
	</tbody>
</table>
<a href="updateform.do">회원정보 수정</a>
<a href="javascript:deleteConfirm()">회원 탈퇴</a>
<script>
	function deleteConfirm(){
		var isDelete=confirm("회원 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="delete.do";
		}
	}
</script>
</body>
</html>