<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grayscale - Start Bootstrap Theme</title>
<style>
.icons{
margin-left:60px;
text-align: center;
}
.bottomCol{
	border-top: 3px solid lightblue;
	
	 margin: 0 auto;
	
}
</style>
<link
	href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/grayscale.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
<!-- 포토라마 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> <!-- 33 KB -->
<link  href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet"> <!-- 3 KB -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script> <!-- 16 KB -->
<!-- 아이콘 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/form.css" />
</head>
<body style="margin-top: 180px">

	<%@include file="../home_menu.jsp"%>
<div class="container">
	<div class="row">
		<div class="col-sm-7">
			<div class="fotorama" data-autoplay="true" data-nav="thumbs" data-allowfullscreen="true">
  				<img src="${pageContext.request.contextPath }/${dto.imagePath}"  class="img-responsive img-thumbnail"
		style="width:410px; height:240px"/>
  				<img src="${pageContext.request.contextPath }/${dto.imagePath}"  class="img-responsive img-thumbnail"
		style="width:410px; height:240px"/>
			</div>
		</div>
		<div class="col-sm-5">
			<h3>walker 이름</h3>
			<p>Lorem ipsum dolor amet, consectetur adipisicing elit. Incidunt neque hic amet ipsa porro velit nam numquam aspernatur enim blanditiis molestiae dolore iusto possimus consequatur dicta doloribus tempora corporis alias.</p>
			<div class="row">
				<div class="col-xs-2 icons">
        		<div class="round round-lg hollow orange">
                <span class="fa fa-tags"></span><br />
                <p>소형: 5kg 미만</p><br />
                <p>15000원</p>
            	</div></div>
            	
            	<div class="col-xs-2 icons">
        		<div class="round round-lg hollow orange">
                <span class="fa fa-tags"></span><br />
                <p>중형: 5-15kg</p><br />
                <p>17500원</p>
            	</div></div>
            	
            	<div class="col-xs-2 icons">
        		<div class="round round-lg hollow orange">
                <span class="fa fa-tags"></span><br />
                <p>대형: 15kg 이상</p><br />
                <p>20000원</p>
            	</div></div>
            </div>
           
            
			<div class="action center-block">
				<button class="btn btn-default" type="submit">
				<a href="insertform.do"> reservation </a></button>
				
			</div>
            </div>
		</div>

	<div class="row bottomCol">
	<h3>펫 워커 경험</h3>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque officia maxime minima incidunt dolor facere iusto vitae veritatis facilis sapiente expedita esse obcaecati architecto maiores nisi ratione iste veniam eveniet!
	</div>
	<div class="row bottomCol">
	<h3>펫 워커 경험</h3>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque officia maxime minima incidunt dolor facere iusto vitae veritatis facilis sapiente expedita esse obcaecati architecto maiores nisi ratione iste veniam eveniet!
	</div>
	<div class="row bottomCol">
	<h3>펫 워커 경험</h3>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque officia maxime minima incidunt dolor facere iusto vitae veritatis facilis sapiente expedita esse obcaecati architecto maiores nisi ratione iste veniam eveniet!
	</div>
	<div class="row bottomCol">
	<h3>펫 워커 경험</h3>
	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque officia maxime minima incidunt dolor facere iusto vitae veritatis facilis sapiente expedita esse obcaecati architecto maiores nisi ratione iste veniam eveniet!
	</div>


</div>
			


<h3>예약자 목록입니다</h3>
<table>
	<thead>
		<tr>
			<th>날짜</th>
			<th>시간대</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="tmp" items="${list }">
			<tr>
				<td>${tmp.selectDate }</td>
				<td>${tmp.timeSlot }</td>
				<td><a href="javascript:deleteConfirm(${tmp.num })">삭제</a></td>
				<td><a href="updateform.do?num=${tmp.num }">수정</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>


<!-- Bootstrap core JavaScript -->
<script src="../resources/vendor/jquery/jquery.js"></script>
<script src="../resources/vendor/bootstrap/js/bootstrap.bundle.js"></script>
<script src="../resources/vendor/jquery-easing/jquery.easing.js"></script>
<script src="../resources/vendor/bootstrap/js/grayscale.js"></script>
<%@include file="../home_footer.jsp"%>
<script>
	function deleteConfirm(num){
		var isDelete=confirm("예약을 삭제하시겠습니까?");
		if(isDelete){
			location.href="delete.do?num="+num;
		}
	}
</script>
</body>

</html>