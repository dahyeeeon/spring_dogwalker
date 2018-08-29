<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../home_menu.jsp" %>
<html>
<head>
<title>review/list</title>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js" /></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css"/>
<style>

	.container{
		margin-top:140px;
	}
    #insertbutton{
       
       float:right;
       margin-top:20px;
       
    }
    
    #insertanchor{
       text-decoration:none;
        color:white;
    }

</style>
</head>
<body>

<div class="container">
   <c:forEach var="tmp" items="${list }">
        <div class="well">
           <div class="media">
               <a class="pull-left" href="#">
                <img  class="media-object img-responsive img-thumbnail"
               style="width:100px; height:100px" 
               src="${pageContext.request.contextPath }/${tmp.imagePath }">
              </a>
              <div class="media-body">
                <h4 class="media-heading">${tmp.title }</h4>
                  <p>워커 이름 : ${tmp.walker }</p>
                   <p>${tmp.content }</p>
                   <ul class="list-inline list-unstyled">
                       <li><span><i class="glyphicon glyphicon-calendar"></i>${tmp.regdate }</span></li>
                        <li>|</li>
                        <li><span> ${tmp.writer}</span></li>
                        <li>|</li>
                        <li class="print-star" data-stars="${tmp.stars }"></li>
                        <li>|</li>
                        <li>
                        <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
                            <span><i class="fa fa-facebook-square"></i></span>
                            <span><i class="fa fa-twitter-square"></i></span>
                             <span><i class="fa fa-google-plus-square"></i></span>
                        </li>
               </ul>
                </div>
          </div>
        </div>
   </c:forEach>
   <!-- 페이징 처리 -->
   <div>
   <ul class="pagination">
      <c:choose>
         <c:when test="${startPageNum ne 1 }">
            <li>
               <a href="list.do?pageNum=${startPageNum-1 }">&laquo;</a>
            </li>
         </c:when>
         <c:otherwise>
            <li class="disabled">
               <a href="javascript:">&laquo;</a>
            </li>
         </c:otherwise>
      </c:choose>
      <c:forEach var="i" begin="${startPageNum }"
         end="${endPageNum }">
         <c:choose>
            <c:when test="${i eq pageNum }">
               <li class="active">
                  <a href="list.do?pageNum=${i }">${i }</a>
               </li>
            </c:when>
            <c:otherwise>
               <li>
                  <a href="list.do?pageNum=${i }">${i }</a>
               </li>
            </c:otherwise>
         </c:choose>
      </c:forEach>
      <c:choose>
         <c:when test="${endPageNum lt totalPageCount }">
            <li>
               <a href="list.do?pageNum=${endPageNum+1 }">&raquo;</a>
            </li>
         </c:when>
         <c:otherwise>
            <li class="disabled">
               <a class="muted" href="javascript:">&raquo;</a>
            </li>
         </c:otherwise>
      </c:choose>      
   </ul>
   
   <button class="btn_update" id="insertbutton"><a id="insertanchor" href="uploadform.do">업로드하기</a></button>
   </div>
</div>
<%@include file="../home_footer.jsp" %>
<script>   

   
   
   
   $(".print-star").each(function(){
      var count=$(this).attr("data-stars");
      if(count==""){
         count=0;
      }
      for(var i=0; i<count; i++){
         var span=$("<span></span>").addClass("glyphicon glyphicon-star");
         $(this).append(span);
      }
   });
   

    </script>
   
</body>
</html>