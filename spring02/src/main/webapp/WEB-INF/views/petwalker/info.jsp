<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petwalker/info.jsp</title>
<style>

</style>
</head>
<body>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<div class="container">
      <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-info">
            <div class="panel-heading panel_update">
              <h3 class="panel-title">${id }님의 개인정보</h3>

              
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
				 <img src="${pageContext.request.contextPath }${dto.imagePath}"  class="img-responsive img-thumbnail"
					style="width:120px; height:120px"/>
                  </div>
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>아이디</td>
                        <td>${dto.id }</td>
                      </tr>
                      <tr>
                        <td>카카오 아이디</td>
                        <td>${dto.kakao }</td>
                      </tr>
                      <tr>
                        <td>닉네임</td>
                        <td>${dto.nickname }</td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>성별</td>
                        <td>${dto.sex }</td>
                      </tr>
                        <tr>
                        <td>집주소</td>
                        <td>${dto.addr }</td>
                      </tr>
                      <tr>
                        <td>휴대폰번호</td>
                        <td>${dto.phone }</td>
                        
                         </tr>
                         <tr>
                        <td>가입일</td>
                        <td>${dto.regdate }</td>
                        
                         </tr>
                        <td>펫유무</td>
                        <td>${dto.hasPet }
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
                  <a href="updateform.do" class="btn_update">회원정보 수정</a>
                  <a href="javascript:deleteConfirm()" class="btn_update">회원탈퇴</a>
                
                
					<a href="profileform.do?nickname=${dto.nickname }" class="btn_update">프로필 입력</a>
					<a href="profileupdateform.do" class="btn_update">프로필 수정</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<script>
	function deleteConfirm(){
		var isDelete=confirm("회원 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="delete.do";
		}
	}
	
	
	
</script>