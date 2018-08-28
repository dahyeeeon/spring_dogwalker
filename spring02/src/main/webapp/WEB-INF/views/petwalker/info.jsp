<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>petwalker/info.jsp</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/">인덱스로 가기</a>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />

<div class="container">
      <div class="row">

        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">개인정보</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
                <img src="${pageContext.request.contextPath }/${dto.imagePath}"  class="img-responsive img-thumbnail"
               style="width:120px; height:120px"/>
                  </div>
                
                <!--<div class="col-xs-10 col-sm-10 hidden-md hidden-lg"> <br>
                  <dl>
                    <dt>DEPARTMENT:</dt>
                    <dd>Administrator</dd>
                    <dt>HIRE DATE</dt>
                    <dd>11/12/2013</dd>
                    <dt>DATE OF BIRTH</dt>
                       <dd>11/12/2013</dd>
                    <dt>GENDER</dt>
                    <dd>Male</dd>
                  </dl>
                </div>-->
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>ID</td>
                        <td>${dto.id }</td>
                      </tr>
                      <tr>
                        <td>KaKao ID</td>
                        <td>${dto.kakao }</td>
                      </tr>
                      <tr>
                        <td>Nickname</td>
                        <td>${dto.nickname }</td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>Gender</td>
                        <td>${dto.sex }</td>
                      </tr>
                        <tr>
                        <td>Home Address</td>
                        <td>${dto.addr }</td>
                      </tr>
                      <tr>
                        <td>phone</td>
                        <td>${dto.phone }</td>
                        
                         </tr>
                         <tr>
                        <td>regdate</td>
                        <td>${dto.regdate }</td>
                        
                         </tr>
                        <td>HasPet</td>
                        <td>${dto.hasPet }
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                  
                  <a href="updateform.do" class="btn btn-primary">회원정보 수정</a>
                  <a href="javascript:deleteConfirm()" class="btn btn-primary">회원탈퇴</a>
                  <a href="profileform.do" class="btn btn-primary">프로필 수정</a>
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