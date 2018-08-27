<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grayscale - Start Bootstrap Theme</title>
<style>
.nav>li{
	margin-right:80px;
}

a#MOVE_TOP_BTN {
    position: fixed;
    right: 2%;
    bottom: 50px;
    display: none;
    z-index: 999;
}

</style>
  <!-- Bootstrap core CSS -->
 <link href="resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
 <!-- Custom styles for this template -->
  <link href="resources/vendor/bootstrap/css/grayscale.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">

</head>

<body id="page-top">

<%@include file="home_menu.jsp" %>

 <!-- Header -->
<header class="masthead">
<div class="container d-flex h-100 align-items-center">
    <div class="header-img">
    	<img src="resources/img/background.jpg" style="width:675px">
   	</div>
    <div class="header-content">
        <h3>안내</h3>
	   <p>02-1234-1234</p>
	   <p>전화가능 시간 10:00~18:00</p>
		 <p>카카오톡:렛츠런</p>
		 <p><b>보험내용안내</b></p>
		 <p>산책 중 다른개와 싸움이 발생해 상해를 입혔을때</p>
		 <p>산책 중 강아지가 타인을 공격했을때</p>
    </div>
  </div> 
</header>
    
<div class="container">
	<div class="row">
        <div class="col-xs-12">
            <ul class="nav nav-pills nav-justified thumbnail">
                <li>
                    <h4 class="list-group-item-heading">Step 1</h4>
                    <p class="list-group-item-text">가입</p>
                </li>
                <li class="active">
                    <h4 class="list-group-item-heading">Step 2</h4>
                    <p class="list-group-item-text">내 지역 검색</p>
               </li>
                <li>
                    <h4 class="list-group-item-heading">Step 3</h4>
                    <p class="list-group-item-text">도그워커 선택</p>
                </li>
                <li>
                    <h4 class="list-group-item-heading">Step 4</h4>
                    <p class="list-group-item-text">예약 및 문의</p>
                </li>
                <li>
                    <h4 class="list-group-item-heading">Step 5</h4>
                    <p class="list-group-item-text">도그워커 방문</p>
                </li>
                <li>
                    <h4 class="list-group-item-heading">Step 6</h4>
                    <p class="list-group-item-text">후기 작성</p>
                </li>
            </ul>
        </div>
	</div>
</div>


 <!-- About Section -->
 <section id="projects" class="projects-section bg-light">
  <div class="container">

    <!-- Featured Project Row -->
    <div class="row align-items-center no-gutters mb-4 mb-lg-5">
      <div class="col-xl-8 col-lg-7">
        <img class="img-fluid mb-3 mb-lg-0" src="" alt="">
      </div>
      <div class="col-xl-4 col-lg-5">
        <div class="featured-text text-center text-lg-left">
          <h4>렛츠런</h4>
          <p class="text-black-50 mb-0">산책으로 평화를 만들 수 있습니다</p>
        </div>
      </div>
    </div>
    <!-- Project One Row -->
    <div class="row justify-content-center no-gutters mb-5 mb-lg-0">
      <div class="col-lg-6">
        <img class="img-fluid" src="resources/img/bg.jpg" alt="">
      </div>
      <div class="col-lg-6">
        <div class="text-center h-100 project">
          <div class="d-flex h-100">
            <div class="project-text w-100 my-auto text-center text-lg-left">
              <h4>이럴 때 이용해주세요</h4>
               <hr class="d-none d-lg-block mb-0 ml-0">
              <p class="mb-0">병이나 아픔으로 입원 했을때</p>
              <p class="mb-0">급히 출장 갈 때</p>
              <p class="mb-0">고령으로 산책을 하기 힘들때</p>
              <p class="mb-0">노령의 강아지라도 산책을 해주고 싶을때</p>
             
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Project Two Row -->
    <div class="row justify-content-center no-gutters">
      <div class="col-lg-6">
        <img class="img-fluid" src="resources/img/bg2.jpg" alt="">
      </div>
      <div class="col-lg-6 order-lg-first">
        <div class="text-center h-100 project">
          <div class="d-flex h-100">
            <div class="project-text w-100 my-auto text-center text-lg-left">
              <h4>산책의 중요성</h4>
               <hr class="d-none d-lg-block mb-0 ml-0">
              <p class="mb-0">산책만 잘해줘도 문제행동이 해결 될 수 있습니다!</p>
              <p class="mb-0">에너지 발산을 도와 스트레스를 줄이고</p>
              <p class="mb-0">산책매너 교육과 함께 문제행동 개선을 돕는 과정입니다.</p>
             
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>
</section>
 
 <!-- Signup Section -->
<section id="search" class="signup-section">
  <div class="container">
    <div class="row">
      <div class="col-md-10 col-lg-8 mx-auto text-center">
        <h2 class="text-white mb-5">우리 동네 도그워커 검색하기</h2>

        <form class="form-inline d-flex" action="AddressSearchResult.do" method = "post" >
          <input type="text" class="form-control" name="input_address" id="input_address">
          <button type="submit" class="btn btn-primary mx-auto"><i class="fa fa-paw fa-2x"></i></button>
        </form>

      </div>
    </div>
  </div>
</section>

 
<section id="bestreview" class="pb-5">
 <div class="container">
     <h5 class="section-title h1">BEST REVIEW</h5>
     <div class="row">
         <!-- Team member -->
         <div class="col-xs-12 col-sm-6 col-md-4">
             <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                 <div class="mainflip">
                     <div class="frontside">
                         <div class="card">
                             <div class="card-body text-center">
                                 <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_01.png" alt="card image"></p>
                                 <h4 class="card-title">Walker1</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                 <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="backside">
                         <div class="card">
                             <div class="card-body text-center mt-4">
                                 <h4 class="card-title">Sunlimetech</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                 <ul class="list-inline">
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="walkerPrf/detail_main.do">
                                             <i class="fa fa-facebook"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-twitter"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-skype"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-google"></i>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <!-- ./Team member -->
         <!-- Team member -->
         <div class="col-xs-12 col-sm-6 col-md-4">
             <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                 <div class="mainflip">
                     <div class="frontside">
                         <div class="card">
                             <div class="card-body text-center">
                                 <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_02.png" alt="card image"></p>
                                 <h4 class="card-title">Walker2</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                 <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="backside">
                         <div class="card">
                             <div class="card-body text-center mt-4">
                                 <h4 class="card-title">Sunlimetech</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                 <ul class="list-inline">
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-facebook"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-twitter"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-skype"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-google"></i>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <!-- ./Team member -->
         <!-- Team member -->
         <div class="col-xs-12 col-sm-6 col-md-4">
             <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                 <div class="mainflip">
                     <div class="frontside">
                         <div class="card">
                             <div class="card-body text-center">
                                 <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_03.png" alt="card image"></p>
                                 <h4 class="card-title">Walker3</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                 <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="backside">
                         <div class="card">
                             <div class="card-body text-center mt-4">
                                 <h4 class="card-title">Sunlimetech</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                 <ul class="list-inline">
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-facebook"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-twitter"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-skype"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-google"></i>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <!-- ./Team member -->
         <!-- Team member -->
         <div class="col-xs-12 col-sm-6 col-md-4">
             <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
                 <div class="mainflip">
                     <div class="frontside">
                         <div class="card">
                             <div class="card-body text-center">
                                 <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_04.jpg" alt="card image"></p>
                                 <h4 class="card-title">Walker4</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.</p>
                                 <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                             </div>
                         </div>
                     </div>
                     <div class="backside">
                         <div class="card">
                             <div class="card-body text-center mt-4">
                                 <h4 class="card-title">Sunlimetech</h4>
                                 <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                                 <ul class="list-inline">
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-facebook"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-twitter"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-skype"></i>
                                         </a>
                                     </li>
                                     <li class="list-inline-item">
                                         <a class="social-icon text-xs-center" target="_blank" href="#">
                                             <i class="fa fa-google"></i>
                                         </a>
                                     </li>
                                 </ul>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
         <!-- ./Team member -->
         <!-- Team member -->
     <div class="col-xs-12 col-sm-6 col-md-4">
         <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
             <div class="mainflip">
                 <div class="frontside">
                     <div class="card">
                         <div class="card-body text-center">
                             <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_05.png" alt="card image"></p>
                             <h4 class="card-title">Walker5</h4>
                             <p class="card-text">This is basic card with image on top, title, description and button.</p>
                             <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                         </div>
                     </div>
                 </div>
                 <div class="backside">
                     <div class="card">
                         <div class="card-body text-center mt-4">
                             <h4 class="card-title">Sunlimetech</h4>
                             <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                             <ul class="list-inline">
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-facebook"></i>
                                     </a>
                                 </li>
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-twitter"></i>
                                     </a>
                                 </li>
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-skype"></i>
                                     </a>
                                 </li>
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-google"></i>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <!-- ./Team member -->
     <!-- Team member -->
     <div class="col-xs-12 col-sm-6 col-md-4">
         <div class="image-flip" ontouchstart="this.classList.toggle('hover');">
             <div class="mainflip">
                 <div class="frontside">
                     <div class="card">
                         <div class="card-body text-center">
                             <p><img class=" img-fluid" src="https://sunlimetech.com/portfolio/boot4menu/assets/imgs/team/img_06.jpg" alt="card image"></p>
                             <h4 class="card-title">Walker6</h4>
                             <p class="card-text">This is basic card with image on top, title, description and button.</p>
                             <a href="#" class="btn btn-primary btn-sm"><i class="fa fa-plus"></i></a>
                         </div>
                     </div>
                 </div>
                 <div class="backside">
                     <div class="card">
                         <div class="card-body text-center mt-4">
                             <h4 class="card-title">Sunlimetech</h4>
                             <p class="card-text">This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.This is basic card with image on top, title, description and button.</p>
                             <ul class="list-inline">
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-facebook"></i>
                                     </a>
                                 </li>
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-twitter"></i>
                                     </a>
                                 </li>
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-skype"></i>
                                     </a>
                                 </li>
                                 <li class="list-inline-item">
                                     <a class="social-icon text-xs-center" target="_blank" href="#">
                                         <i class="fa fa-google"></i>
                                     </a>
                                 </li>
                             </ul>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
     <!-- ./Team member -->

 </div>
 </div>
</section>
<a id="MOVE_TOP_BTN" href="#">TOP</a>


<%@include file="home_footer.jsp" %>


 <!-- Bootstrap core JavaScript -->
<script src="resources/vendor/jquery/jquery.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="resources/vendor/jquery-easing/jquery.easing.js"></script>
<script src="resources/vendor/bootstrap/js/grayscale.js"></script>
<script>
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 500) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });
        
        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });
    

</script>



</body>

</html>
