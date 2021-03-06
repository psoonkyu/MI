<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%@ include file="/views/common/header.jsp" %>
<body>
<script>
	$(function(){
		$("#password_2").blur(function(){
			var pw1=$("#password_").val();
			var pw2=$("#password_2").val();
			if(pw1.trim()!=pw2.trim()){
				alert("비밀번호가..일치..하지..않아..");
				$('#password_').focus();
				$('#password_').val('');
				$('#password_2').val('');
			}
		})
	});
	function fn_enroll_validate(){
		var memberId=$("#memberId_").val();
		if(memberId.trim().length<4){
			alert("아이디는 항상 4글자이상으로...ㅎㅎㅎ");
			$("#memberId_").focus();
			return false;
		}
		return true;
	}
	function fn_checkIdDuplicate(){
		var memberId=$("#memberId_").val().trim();
		if(!memberId||memberId.length<4)
			{
				alert("아이디는 항상 4글자이상으로...ㅎㅎㅎ");
				return;
			}
		var url="<%=request.getContextPath()%>/chekIdDuplicate";
		var title="checkIdDuplicate";
		var option="left=500px, top=100px, width=300px, height=200px, menubar=no, status=no, scrollbars=yes";
		var popup=window.open("",title,option);
		checkIdDuplicateFrm.memberId.value=memberId;
		checkIdDuplicateFrm.target=title;
		checkIdDuplicateFrm.action=url;
		checkIdDuplicateFrm.method="post";
		checkIdDuplicateFrm.submit();
		
	}

</script>
<style>
	#enroll-container{
	 position: absolute;
  width: 350px;
  height: 300px;
  z-index: 15;
  top: 50%;
  left: 50%;
  margin: -200px 0 0 -150px;
  text-align: center;
  border: 2px solid black;
  }
</style>

<section id="enroll-container">
	<h2 id=hjw>회원가입 정보 입력</h2>
	<form name="memberEnrollFrm"action="<%=request.getContextPath() %>/memberJoinEnd" onsubmit="return fn_enroll_validate()" method="post">
	<table>
		<tr>
			<th>
				아이디
			</th>
			<td>
				<input type="text" name="memberId" id="memberId_" required placeholder="4글자 이상 입력">
				<input type="button" value="중복검사" onclick="fn_checkIdDuplicate()"/>
			</td>
		</tr>
		<tr>
			<th>
				패스워드
			</th>
			<td>
				<input type="password" name="password" id="password_" required/>
			</td>
		</tr>
		<tr>
			<th>패스워드 확인</th>
			<td>
				<input type="password" id="password_2" required/>
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="memberName" id="memberName" required/>
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
				<input type="email" placeholder="abc@dse.com" name="email" id="email"/>
			</td>
		</tr>
		<tr>
			<th>휴대전화</th>
			<td>
				<input type="tel" placeholder="(-없이)01012345678" name="phone" id="phone" maxlength="11" required/>
			</td>
		</tr>

	</table>
	<input type="submit" value="가입"/>
	<input type="reset" value="취소"/>
	</form>
	<form name="checkIdDuplicateFrm" method="post">
		<input type="hidden" name="memberId"/>
	</form>
</section>

<%@ include file="/views/common/footer.jsp" %>
