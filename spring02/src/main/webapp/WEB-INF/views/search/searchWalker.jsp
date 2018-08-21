<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>/search/searchWalker</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<style>
	.spacer {
		height: 500px;
		background-color: #cecece;
	}
	
	body {
		padding-top: 0px;
	}
	
	.footer {
		background-color: #000;
		height: 100px;
	}
	
	.navbar {
	   min-height: 150px;
	   background-color:#4db2e5;
	}
		
	.navbar_top{
		
		background-color:#394899;
	}
	
	/* bootstrap affix 가 동작 하기 위한 css */
	.affix {
		/* 고정될때 상단에서 떨어질 거리 */
		top: 60px;
	}
	
	.affix-bottom {
		position: absolute;
	}
	
	
	.index-search input{
		height:50px;
		line-height:50px;
		border-radius:6px;
		margin:20px 0px 10px 50px;
		padding:10px 15px;
		width:90%;
		border-color:#cecece;
		border-width:2px;
		border-style:solid;
		background-image : url(http://strage.googleapis.com/pefam-web-cdn/icon field search.png);	
	}
	
	</style>
	
	<!-- Custom styles for this template -->
	<link href="resources/vendor/bootstrap/css/grayscale.css"
		rel="stylesheet">
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
</head>

<body>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="row">
				<div class="index-search">
					<input type="text" placeholder="${input_address}" />
				</div>
			</div>
			
			<div class="row">
				
			</div>
			
			<div class="row">
				
			</div>
		</div>
	

	</div>

	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6">
				<h3>Dummy Contents</h3>
				<div class="spacer">spacer</div>
				<div class="spacer">spacer</div>
				<div class="spacer">spacer</div>
			</div>
			<div class="col-md-6">
				<!-- data-offset-top="고정될때까지 위로 스크롤 되는 거리" 
         data-offset-bottom="하단 footer 의 높이" -->
				<div data-spy="affix" data-offset-bottom="300">
					<p>되는건가요?</p>
				</div>
			</div>
		</div>
	</div>
	<div class="footer"></div>
	<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</body>
</html>