<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Lets Run!</title>
<link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" rel="stylesheet">
  <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/grayscale.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
   
<style>
.row {
   border: 3px solid #64a19d;
    margin: 0 auto;
   
}
fieldset {
    min-width: 0;
    padding: 0;
    margin: auto;
    border: 0;
}
label{
   text-align: center;
}
</style>
</head>
<body style="margin-top: 180px">
<%@include file="../home_menu.jsp" %>
   <div class="container">
   <form action="insert.do" method="post" id="rsvForm">
      <div class="row">
         <fieldset>
            <legend></legend>       
            <label for="petwalker"></label>
            <input type="hidden" name="petwalker" id="petwalker" value="${petwalker }"/>   
            <input type="hidden" name="id" value="${petUser.id}" />
            <input type="hidden" name="kakao" value="${petUser.kakao}" />
            <input type="hidden" name="nickname" value="${petUser.nickname}" />
            <p>��û�� ���� </p>
            <label for="id"></label> 
            <input type="text"  id="id" value="${petUser.id}" disabled /><br> 
            <label for="kakao"></label>
            <input type="text"  id="kakao" value="${petUser.kakao}" disabled /><br>
            <label for="nickname"></label> 
            <input type="text" id="nickname" value="${petUser.nickname}" disabled /><br />
            
            </fieldset>
            
      </div>
      <br /><br />
      <div class="row">

         <fieldset>
            <legend></legend>
            <p>�� ũ��</p>
            <label for="dogSize">����</label> 
            <input type="radio" name="dogSize" value="small" required /> 
            <label for="dogSize">����</label> 
            <input type="radio" name="dogSize" value="middle" /> 
            <label for="dogSize">����</label>
            <input type="radio" name="dogSize" value="big" />
         </fieldset>

      </div><br /><br />
      <div class="row">

         <fieldset>
            <legend></legend>
            <p>���� ������ ��¥</p>
            <label for="selectDate">��¥ ����</label> 
            <input type="date" name="selectDate" value="rsvDate" required/>
         </fieldset>

      </div><br /><br />
      <div class="row">

         <fieldset>
            <legend></legend>
            <p>���� ������ �ð�</p>
            <label for="timeSlot">�ð��� ����</label><br /> <select name="timeSlot"
               id="timeSlot" required>
               <option value="">--����--</option>
               <option value="morning">��ħ</option>
               <option value="afternoon">����</option>
               <option value="evening">����</option>
               <option value="night">��</option>
            </select> <br />
         </fieldset>

      </div><br /><br />
      <div class="row">

         <fieldset>
            <legend></legend>
            <p>�� ķ</p>
            <label for="cctv">�� ķ �ɼ�</label> <br /> <select name="cctv"
               id="cctv" required>
               <option value="">--����--</option>
               <option value="true">�ɼ� �߰�</option>
               <option value="false">�ɼ� �߰����� ����</option>

            </select> <br />
         </fieldset>

      </div><br /><br />
      <div class="row" style="border:none;">
      <button id="btn" style="margin:auto; margin-bottom:50px" class="btn btn-default center-block" type="submit">Submit</button>
      </div>
      
</form>      

   </div>
<%@include file="../home_footer.jsp" %> 

</body>
</html>