<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review/uploadform</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bars-square.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fontawesome-stars.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js" /></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery.barrating.js"></script>





<style>

@font-face {
        font-family: 'Glyphicons Halflings';
        src:url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/fonts/glyphicons-halflings-regular.eot');
        src:url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'),
          url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/fonts/glyphicons-halflings-regular.woff') format('woff'),
          url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/fonts/glyphicons-halflings-regular.ttf') format('truetype'),
          url('https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/fonts/glyphicons-halflings-regular.svg#glyphicons-halflingsregular') format('svg');
      }
    .animated {
    -webkit-transition: height 0.2s;
    -moz-transition: height 0.2s;
    transition: height 0.2s;
}

.stars
{
    margin: 20px 0;
    font-size: 24px;
    color: #d17581;
}



</style>
</head>
<body>
<div class="container">
   <form name="reviewform" action="upload.do" method="post" enctype="multipart/form-data">
        <label for="walker">워커</label>
        <select name="walker" id="walker">
        <<option>워커 선택</option>
        <c:forEach var="tmp" items="${list }">
           <option>${tmp.walker }</option>
        </c:forEach>
        </select></br>
        <label for="stars">별점</label>
        <select id="example-square" name="stars" id="stars">
                  <option value=""></option>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
         </select>
        <label for="title">제목</label>
        <input type="text" name="title" id="title"/>
        <textarea class="form-control animated" cols="50" id="content" name="content" placeholder="Enter your review here..." rows="5"></textarea>
      <label for="myFile">이미지</label>
      <input type="file" name="file" id="file"/><br/>
        <div class="text-right">
              <a class="btn btn-danger btn-sm" href="#" id="close-review-box" style="display:none; margin-right: 10px;">
              <span class="glyphicon glyphicon-remove"></span>Cancel</a>
              <button class="btn btn-success btn-lg" type="submit">Save</button>
         </div>
         </form>
</div>
         
         <script>
         $(function() {
             $('#example-square').barrating({
               theme: 'fontawesome-stars'
             });
          });
         
         
         </script>

         
</body>
</html>