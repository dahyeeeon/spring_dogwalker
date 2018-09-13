<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Let's Run, Pet walker!</title>
<style>
.icons {
   text-align: center;
   margin: auto;
}

.bottomCol {
   border-top: 3px solid #64a19d;
   margin: 0 auto;
   margin-top: 15px;
}
.bottomCol > h3{
   margin-left: 40px;
}
.wk > p{
   margin-left: 60px;
}
.wk{
   margin-top: 15px;
}
.round>p {
   font-size: 12px;
   color: black;
   width: 100px;
   margin-top: 0;
   margin-bottom: 0;
   margin-left: -30px;
}
</style>
<link
   href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css"
   rel="stylesheet">
<link
   href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/grayscale.css"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<!-- 포토라마 -->
<script
   src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- 33 KB -->
<link
   href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
   rel="stylesheet">
<!-- 3 KB -->
<script
   src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<!-- 16 KB -->
<!-- 아이콘 -->
<link rel="stylesheet"
   href="${pageContext.request.contextPath }/resources/css/form.css" />
</head>
<body style="margin-top: 180px">

   <%@include file="../home_menu.jsp"%>
   <div class="container">

      <div class="row">
         <div class="col-sm-7 center-block">

            <div class="fotorama center-block" data-autoplay="true" data-nav="thumbs"
               data-allowfullscreen="true">
            
               <img src="${pageContext.request.contextPath }/${pwk.filePath }"
                  class="img-responsive img-thumbnail" style="height:260px; width:500px"/> 
               <img src="${pageContext.request.contextPath }/${pwk.filePath }"
                  class="img-responsive img-thumbnail" style="height:260px; width:500px"/> 
               <img src="${pageContext.request.contextPath }/resources/img/dog4.jpg"
                  class="img-responsive img-thumbnail" style="height:260px; width:500px"/>
              
            </div>

         </div>
         <div class="col-sm-5">
            
            <h3>${nickname }</h3>
            
               <p>바쁜 반려견 보호자를 대신하여 저희 도그 워커가 산책을 통해 에너지를 발산시켜 드립니다!
               반려견의 스트레스를 낮춰주고 교육을 통해 문제 행동 개선을 돕는 도그 워커!</p>
            <div class="row">
               <div class="col-xs-4 icons">
                  <div class="round round-lg hollow orange">
                     <span class="fa fa-tags"></span><br />
                     <p>소형:</p>
                     <p>5kg 미만</p>
                     <p>15000원</p>
                  </div>
               </div>
               <div class="col-xs-4 icons">
                  <div class="round round-lg hollow orange">
                     <span class="fa fa-tags"></span><br />
                     <p>중형:</p>
                     <p>10~15kg</p>
                     <p>20000원</p>
                  </div>
               </div>
               <div class="col-xs-4 icons">
                  <div class="round round-lg hollow orange">
                     <span class="fa fa-tags"></span><br />
                     <p>대형:</p>
                     <p>15kg 이상</p>
                     <p>20000원</p>
                  </div>
               </div>


            </div>


            <div class="action" style="text-align: center; margin-top: 50px;">
               <button class="btn btn-default" type="submit">
                  <a href="insertform.do?petwalker=${nickname }"> reservation </a>
               </button>

            </div>
         </div>
      </div>
      
      <div class="row bottomCol">
         <h3>펫 워커 경험</h3>
      </div>
      <div class="row right-block wk">
         <p>${pwk.experience }</p>
      </div>
      <div class="row bottomCol">
         <h3>워커 경력</h3>
      </div>
      <div class="row right-block wk">
         <p>${pwk.career }</p>
        </div>
      <div class="row bottomCol">
         <h3>워커로서 제공 가능한 무료 서비스</h3>
     </div>
     <div class="row right-block wk">
         <p>${pwk.freeservice }</p>
     </div>
      <div class="row bottomCol">
         <h3>받은 리뷰들</h3>
         
         <c:forEach var="tmp" items="${list }">
         
            <div class="well row right-block">
               <div class="media" style="margin-left: 60px;">
                  <a class="pull-left" href="#"> <img
                     class="media-object img-responsive img-thumbnail"
                     style="width: 100px; height: 100px"
                     src="${pageContext.request.contextPath }/${tmp.imagePath }">
                  </a>
                  <div class="media-body">
                     <h4 class="media-heading">${tmp.title }</h4>
                     <p>워커 이름 : ${tmp.nickname }</p>
                     <p>${tmp.content }</p>
                     <ul class="list-inline list-unstyled">
                        <li><span><i class="glyphicon glyphicon-calendar"></i>${tmp.regdate }</span></li>
                        <li>|</li>
                        <li class="print-star" data-stars="${tmp.stars }"></li>
                        <li>|</li>
                        <li>
                           <!-- Use Font Awesome http://fortawesome.github.io/Font-Awesome/ -->
                           <span><i class="fa fa-facebook-square"></i></span> <span><i
                              class="fa fa-twitter-square"></i></span> <span><i
                              class="fa fa-google-plus-square"></i></span>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
            
         </c:forEach>
      </div>
   

   </div>



   <!-- Bootstrap core JavaScript -->
   <script src="../resources/vendor/jquery/jquery.js"></script>
   <script src="../resources/vendor/bootstrap/js/bootstrap.bundle.js"></script>
   <script src="../resources/vendor/jquery-easing/jquery.easing.js"></script>
   <script src="../resources/vendor/bootstrap/js/grayscale.js"></script>
   <%@include file="../home_footer.jsp"%>
   
</body>

</html>