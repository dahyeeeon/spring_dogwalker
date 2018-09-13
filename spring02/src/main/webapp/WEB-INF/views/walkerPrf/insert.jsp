<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/view/detail/insert.jsp</title>
</head>
<body>
<script>
	alert("예약 됐습니다");
	location.href="${pageContext.request.contextPath }/walkerPrf/detail_main.do?nickname=${param.petwalker}";
</script>

</body>
</html>