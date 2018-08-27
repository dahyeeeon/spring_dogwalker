<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
.header_gnb{position:fixed;top:0;left:0;z-index:9999;width:100%;background:rgba(255,255,255,0.7)}
.header_gnb .login_area{border-bottom:1px solid #efefef;height:30px;text-align:right}
.header_gnb .login_area a{display:inline-block;padding:5px 10px 0;margin-right:10px;font-size:10px;line-height:20px;color:#333;vertical-align:top;}
.header_gnb .gnb_area{overflow:hidden;padding:10px 20px;border-bottom:1px solid #efefef}
.header_gnb .gnb_area h1{float:left;width:56px;height:40px;margin:0;padding:0;}
.header_gnb .gnb_area h1 img{width:auto;height:100%}
.header_gnb .gnb_area nav{float:right;line-height:0;position:relative;top:10px;}
.header_gnb .gnb_area nav button{display:none}
.header_gnb .list_gnb{overflow:hidden;block;position:relative;padding:0;margin:0;}
.header_gnb .list_gnb li{float:left;width:100px;font-size:16px;line-height:40px;text-align:center;list-style:none;padding:0;margin:0;}
.header_gnb .list_gnb li a{display:block;position:relative;width:auto;height:100%;color:#333}
.header_gnb .list_gnb li a:after{position:absolute;bottom:0;left:0;width:0;height:2px;background:rgba(0,0,0,0.4);content:'';}
.header_gnb .list_gnb li:hover a:after{width:100%;-webkit-transition:width .4s;transition:width .4s;}
@media (max-width: 720px) {
	.header_gnb .gnb_area h1{margin-top:10px}
	.header_gnb .gnb_area nav button{display:block;margin-top:10px;width:60px;height:40px;line-height:40px;border:1px solid #333;border-radius:4px;background:none}
	.header_gnb .gnb_area nav button:hover + .list_gnb{display:block;position:absolute;top:90px;right:0}
	.header_gnb .list_gnb.active{display:block;position:absolute;top:90px;right:0}
	.header_gnb .list_gnb li{float:none}
	.header_gnb .list_gnb{display:none}
}
</style>
<header class="header_gnb">
	<div class="login_area">
		<c:choose>
			<c:when test="${not empty id }">
		 		<a class="nav-link js-scroll-trigger" href="petwalker/logout.do">logout</a>
			</c:when>
			<c:otherwise>
		    	<a class="nav-link js-scroll-trigger" href="petwalker/loginform.do">login</a>
		    </c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${not empty id }">
				<a href="petwalker/info.do" >${id } 님 마이페이지</a>
			</c:when>
			<c:otherwise>
				<a href="petwalker/signup_form.do">join us</a>
			</c:otherwise>
		</c:choose>
	</div>
	<div class="gnb_area">
		<h1><a href="home.do"><img src="resources/img/logo (2).png" alt="logo"/></a></h1>
		<nav>
			<button type="button">Menu</button>
			<ul class="list_gnb">
				<li><a href="#search">All walker</a></li>
				<li><a href="#bestreview">Review</a></li>
				<li><a href="community/list.do">Community</a></li>
			</ul>
		</nav>
	</div>
</header>
