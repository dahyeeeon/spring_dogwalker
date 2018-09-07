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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
</head>
<body>
<div class="container">
      <div class="row bottomCol" style="margin-bottom: 130px">
         <h3>예약 목록</h3>
         <table class="table table-border">
            <thead>
               <tr>
               	  <th>펫워커</th>
                  <th>날짜</th>
                  <th>시간대</th>
                  <th>사이즈</th>
                  <th>펫캠</th>
                  <th>수락</th>
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
                     <td>${tmp.isReserved }</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
      </div>
      </div>
</body>
</html>