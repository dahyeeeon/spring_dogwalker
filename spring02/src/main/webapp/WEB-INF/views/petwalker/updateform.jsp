<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petwalker/updateform.jsp</title>

</head>
<body>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />

<div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-info">
            <div class="panel-heading panel_update">
              <h3 class="panel-title">회원정보 수정</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
                <img src="${pageContext.request.contextPath }/${dto.imagePath}"  class="img-responsive img-thumbnail"
					style="width:120px; height:120px"/>
                  </div>
<form action="update.do" method="post" id="updateForm">
                
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td><input type="hidden" name="id" value="${id }"/>
	<label for="id">아이디</label></td>
                        <td><input type="text" id="id" value="${id }" 
		disabled="disabled"/></td>
                      </tr>
                      <tr>
                        <td><label for="kakao">카카오 아이디</label></td>
                        <td><input type="text" name="kakao" id="kakao" 
		value="${dto.kakao }"/></td>
                      </tr>
                      <tr>
                        <td><label for="nickname">닉네임 </label></td>
                        <td>	<input type="text" name="nickname" id="nickname" 
		value="${dto.nickname }" disabled="disabled"/></td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td><label for="phone">휴대폰 번호</label></td>
                        <td><input type="text" name="phone" id="phone" 
		value="${dto.phone }"/></td>
                      </tr>
                        <tr>
                        <td><label for="addr">주소</label></td>
                        <td><input type="text" name="addr" id="addr" 
		value="${dto.addr }"/></td>
                      </tr>
                      <tr>
                        <td><label for="sex">성별 </label></td>
                        <td>	<input type="text" name="sex" id="sex" 
		value="${dto.sex }" disabled="disabled"/></td>
                        
                         </tr>
                         <tr>
                        <td><label for="regdate">가입일 </label></td>
                        <td>${dto.regdate }</td>
                        
                         </tr>
                        <td><label for="haspet">펫유무</label></td>
                        <td>${dto.hasPet }
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
                 <button type="submit" class="btn_update">수정 확인</button>
                 <a href="pw_changeform.do" class="btn_update">비밀번호 변경</a>
 </form>
                </div>
              </div>
            </div>
          </div>
        </div>
</div>




