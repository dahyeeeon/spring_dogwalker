<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<header class="header_gnb">
   <div class="login_area">
      <c:choose>
         <c:when test="${not empty id }">
            <a class="nav-link js-scroll-trigger" href="${pageContext.request.contextPath }/petwalker/logout.do">logout</a>
         </c:when>
         <c:otherwise>
            <a href="javascript:" class="nav-link js-scroll-trigger" data-toggle="modal" data-target="#loginModal">login</a>
         </c:otherwise>
      </c:choose>
      <c:choose>
         <c:when test="${ (not empty id) and (isWalker eq true)  }">
               <strong><a href="${pageContext.request.contextPath }/petwalker/info.do">${id }</a></strong>님 마이페이지
         </c:when>
         <c:when test="${ (not empty id) and (isWalker eq false)  }">
               <strong><a href="${pageContext.request.contextPath }/petusers/info.do">${id }</a></strong>님 마이페이지
         </c:when>
         <c:otherwise>
            <a href="${pageContext.request.contextPath }/home.do"><img src="${pageContext.request.contextPath }/resources/img/paw.png" alt="logo" /></a>
         </c:otherwise>
      </c:choose>
   </div>
   
   <!-- 로그인 모달 -->
   <div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
      aria-labelledby="loginModalLabel" aria-hidden="true">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h4 class="modal-title" id="loginModalLabel">로그인 하기</h4>
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <div role="tabpanel">
                  <!-- Nav tabs -->
                  <ul class="nav nav-tabs" role="tablist">
                     <li role="presentation" class="active"><a
                        href="#userloginTab" aria-controls="userloginTab" role="tab"
                        data-toggle="tab" style="font-size: 16px; width: 200px;">
                           회원으로 로그인</a></li>
                     <li role="presentation"><a class="doglogin" href="#dogloginTab"
                        aria-controls="dogloginTab" role="tab" data-toggle="tab"
                        style="font-size: 16px; width: 200px;"> 도그워커로 로그인</a></li>
                  </ul>
                  <!-- Tab panes -->
                  <div class="tab-content">
                     <div role="tabpanel" class="tab-pane active" id="userloginTab">
                        <h5 style="margin-top: 20px;">펫 유저 아이디와 비밀번호를 입력하세요.</h5>
                        <form
                           action="${pageContext.request.contextPath }/petusers/login.do?url=${url }"
                           method="post">
                           <div style="margin-bottom: 20px;">
                              <input type="text" class="form-control" name="id"
                                 placeholder="아이디를 입력하세요">
                           </div>
                           <div>
                              <input type="password" class="form-control" name="pwd"
                                 placeholder="비밀번호를 입력하세요">
                           </div>
                           <br />
                           <div class="modal-footer">
							<a href="${pageContext.request.contextPath }/petusers/signup_form.do" class="btn btn-primary" style="position: absolute; left: 15px;">회원가입하기</a>
							<button type="submit" class="btn btn-primary">로그인</button>
                             <button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
                           </div>
                        </form>
                     </div>
                     <div role="tabpanel" class="tab-pane" id="dogloginTab">
                        <h5 style="margin-top: 20px;">도그 워커 아이디와 비밀번호를 입력하세요.</h5>
                        <form
                           action="${pageContext.request.contextPath }/petwalker/login.do?url=${url }"
                           method="post">
                           <div style="margin-bottom: 20px;">
                              <input type="text" class="form-control" name="id"
                                 placeholder="아이디를 입력하세요">
                           </div>
                           <div>
                              <input type="password" class="form-control" name="pwd"
                                 placeholder="비밀번호를 입력하세요">
                           </div>
                           <br />
                           <div class="modal-footer">
                           	<a href="${pageContext.request.contextPath }/petwalker/signup_form.do" class="btn btn-primary" style="position: absolute; left: 15px;">회원가입하기</a>
                              <button type="submit" class="btn btn-primary">로그인</button>
                              <button type="button" class="btn btn-primary"
                                 data-dismiss="modal">닫기</button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <div class="gnb_area">
      <h1>
         <a href="${pageContext.request.contextPath }/home.do"><img
            src="${pageContext.request.contextPath }/resources/img/logo (2).png"
            alt="logo" /></a>
      </h1>
      <nav>
         <button type="button">Menu</button>
         <ul class="list_gnb">
            <li><a
               href="${pageContext.request.contextPath }/search/list.do">All
                  walker</a></li>
            <li><a
               href="${pageContext.request.contextPath }/review/list.do">Review</a></li>
            <li><a
               href="${pageContext.request.contextPath }/community/list.do">Community</a></li>
         </ul>
      </nav>
   </div>
   

</header>