<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
   <div class="container">
     <a class="navbar-brand js-scroll-trigger" href="#">   <img class="img-fluid" src="resources/img/logo (2).png" style="width:100px; height:100px"></a>
     <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
       Menu
       <i class="fa fa-bars"></i>
     </button>
     <div class="collapse navbar-collapse" id="navbarResponsive">
       <ul class="navbar-nav ml-auto">
         <li class="nav-item">
           <a class="nav-link js-scroll-trigger" href="#search">All walker</a>
         </li>
          <li class="nav-item">
           <a class="nav-link js-scroll-trigger" href="#bestreview">review</a>
         </li>
         <li class="nav-item">
         <c:choose>
           <c:when test="${not empty id }">
			 <a class="nav-link js-scroll-trigger" href="petwalker/logout.do">logout</a>
			</c:when>
			<c:otherwise>
           <a class="nav-link js-scroll-trigger" href="petwalker/loginform.do">login</a>
           </c:otherwise>
          </c:choose>
         </li>
         <li class="nav-item">
          <c:choose>
           <c:when test="${not empty id }">
			<p><strong><a href="petwalker/info.do" >${id }</a></strong>님 마이페이지</p>
			</c:when>
			<c:otherwise>
          <a class="nav-link js-scroll-trigger" href="petwalker/signup_form.do">join us</a>
           </c:otherwise>
          </c:choose>

         </li>
          <li class="nav-item">

         </li>
       </ul>
     </div>
   </div>
 </nav>
 