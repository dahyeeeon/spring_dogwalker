<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petusers/reservation.jsp</title>
<style>
	.bottomCol {
   		border-top: 3px solid #64a19d;
   		margin: 0 auto;
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
		<h2>${id }님의 예약 목록</h2>
		<p>내 예약 상태를 볼 수 있습니다.</p>
	</div>
      <div class="row bottomCol" style="margin-bottom: 130px; margin-top: 60px;">
         <h4>전체 예약 목록</h4>
         <table class="table table-border">
            <thead>
               <tr>
               	  <th>도그워커</th>
                  <th>날짜</th>
                  <th>시간대</th>
                  <th>사이즈</th>
                  <th>펫캠</th>
                  <th>신청한 예약</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="tmp" items="${list }">
                  <tr>
                     <td>${tmp.petwalker }</td>
                     <td>${tmp.selectDate }</td>
                     <td>${tmp.timeSlot }</td>
                     <td>${tmp.dogSize }</td>
                     <td>${tmp.cctv }</td>
                     <c:choose>
                     <c:when test = "${tmp.isReserved == 1 }">
                     	<td>수락</td>
                     </c:when>
                     <c:when test = "${tmp.isReserved == 0 }">
                     	<td>보류</td>
                     </c:when>
                     <c:when test = "${tmp.isReserved == 2 }">
                     	<td>거절</td>
                     </c:when>
                     
                     </c:choose>
                  </tr>
                  
               </c:forEach>
            </tbody>
         </table>
      </div>
      </div>
</body>
<%@include file="../home_footer.jsp"%>
</html>