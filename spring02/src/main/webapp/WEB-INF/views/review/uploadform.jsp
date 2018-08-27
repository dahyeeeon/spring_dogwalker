<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review/uploadform</title>

 <link href="resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
 <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js" />
<style>
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
	<form name="reviewform" action="upload.do" method="post" enctype="multipart/form-data">
        <label for="walker">워커</label>
        <input type="text" name="walker" id="walker"/>
        <label for="stars">별점</label>
        <input type="text" name="stars" id="stars"/>
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
</body>
</html>