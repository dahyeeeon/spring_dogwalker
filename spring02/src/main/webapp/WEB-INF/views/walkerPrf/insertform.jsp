<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Lets Run!</title>
<link
	href="${pageContext.request.contextPath }/resources/vendor/bootstrap/css/bootstrap.css"
	rel="stylesheet">
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
	<form action="insert.do" method="post">
		<div class="row">
			<fieldset>

			

			
				<legend></legend>
				<p>��û�� ���� </p>
				<label for="id"></label> <input type="text" name="id" id="id"
					placeholder="���̵� �Է�" /><br> <label for="kakao"></label> <input
					type="text" name="kakao" id="kakao" placeholder="īī�� ���̵� �Է�" /><br>
				<label for="nickname"></label> <input type="text" name="nickname"
					id="nickname" placeholder="�г��� �Է�" /><br />
					
				</fieldset>
				
		</div>
		<br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>�� ũ��</p>
				<label for="dogSize">����</label> <input type="radio" name="dogSize"
					value="small" /> <label for="dogSize">����</label> <input
					type="radio" name="dogSize" value="middle" /> <label for="dogSize">����</label>
				<input type="radio" name="dogSize" value="big" />
			</fieldset>

		</div><br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>���� ������ ��¥</p>
				<label for="selectDate">��¥ ����</label> <input type="date"
					name="selectDate" value="rsvDate" />
			</fieldset>

		</div><br /><br />
		<div class="row">

			<fieldset>
				<legend></legend>
				<p>���� ������ �ð�</p>
				<label for="timeSlot">�ð��� ����</label><br /> <select name="timeSlot"
					id="timeSlot">
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
					id="cctv">
					<option value="">--����--</option>
					<option value="true">�ɼ� �߰�</option>
					<option value="false">�ɼ� �߰����� ����</option>

				</select> <br />
			</fieldset>

		</div><br /><br />
		
		<button type="submit" style="margin: 0 auto;">�߰�</button>
</form>		

	</div>
<%@include file="../home_footer.jsp" %>	
</body>
</html>