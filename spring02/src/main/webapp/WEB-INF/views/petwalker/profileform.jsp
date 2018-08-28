<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />

</head>
<body>
<form action="profile.do" method="post" 
id="profileform" enctype="multipart/form-data">
	<input type="hidden" name="id" id="id" value="${id }"/>
	<label for="myFile">이미지</label>
	<input type="file" name="file1" id="file" multiple="multiple"/><br/>
	<label for="career">도그워커 경력</label><br />
	<textarea name="career" id="career" cols="30" rows="10"></textarea><br />
	<label for="experience">경험</label><br />
	<textarea name="experience" id="experience" cols="30" rows="10"></textarea><br />
	<label for="freeservice">무료서비스</label><br />
	<textarea name="freeservice" id="freeservice" cols="30" rows="10"></textarea><br />

	<button type="submit">가입</button>
</form>
</body>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>	
</html>
