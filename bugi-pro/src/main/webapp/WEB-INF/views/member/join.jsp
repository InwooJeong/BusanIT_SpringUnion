<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%--include head.jsp --%>
	<jsp:include page="/WEB-INF/views/include/head.jsp"/>
	<style>
		#joinForm{
			overflow:auto;
		}
	</style>	
</head>
<body>
   <%--include header.jsp --%>
   <jsp:include page="/WEB-INF/views/include/header.jsp"/>
   
   <!-- middle container -->
    <div class="container mt-2">
      <div class="row">

        <!-- Left Menu -->
        <div class="col-sm-3">
        	<%--include left.jsp --%>
        	<jsp:include page="/WEB-INF/views/include/left.jsp"/>
        </div>
        <!-- end of Left Menu  -->
		
		<!-- 여기서 페이지에 따라 내용을 변경 -->
        <!-- Main area -->
        <div class="col-sm-9" id="joinForm">
          
			<h5 class="text-center">회원 가입</h5>
			<hr class="featurette-driver">
			
			<form action="/member/join" method="POST">
			
			<div class="form-group">
				<label for="username">
					<i class="material-icons align-middle">account_circle</i>
					<span class="align-middle">ID</span>
				</label>
				<input type="text" class="form-control" id="username" aria-describedby="idHelp" name="username" required autofocus>
				<small id="idHelp" class="form-text text-muted">아이디는 필수 입력 요소입니다.</small>
			</div>
			
			<div class="form-group">
				<label for="nickname">
					<i class="material-icons align-middle">perm_identity</i>
					<span class="align-middle">닉네임</span>
				</label>
				<input type="text" class="form-control" id="nickname" aria-describedby="nickHelp" name="nickname" required>
				<small id="nickHelp" class="form-text text-muted">닉네임은 필수 입력 요소입니다.</small>
			</div>
			
			<div class="form-group">
				<label for="password">
					<i class="material-icons align-middle">https</i>
					<span class="align-middle">비밀번호</span>
				</label>
				<input type="password" class="form-control" id="password" aria-describedby="pwHelp" name="password" required>
				<small id="pwHelp" class="form-text text-muted">비밀번호는 영문자와 특수문자를 포함, 6~12글자까지 가능합니다</small>
			</div>
			
			<div class="form-group">
				<label for="password">
					<i class="material-icons align-middle">done</i>
					<span class="align-middle">비밀번호 확인</span>
				</label>
				<input type="password" class="form-control" id="passwordCheck" aria-describedby="pwcHelp" name="passwordCheck" required>
				<small id="pwcHelp" class="form-text text-muted">비밀번호를 한 번 더 입력해주세요.</small>
			</div>
			
			<div class="form-group">
                <label for="gender">
                  <i class="material-icons align-middle">wc</i>
                  <span class="align-middle">성별 선택</span>
                </label>
                <select class="form-control" id="gender" name="gender">
                  <option value="" disabled selected>성별을 선택하세요.</option>
                  <option value="M">남자</option>
                  <option value="F">여자</option>
                  <option value="N">선택 안함</option>
                </select>
             </div>
             
             <div class="form-group">
             	<label for="mAddress">
             		<i class="material-icons align-middle">home</i>
             		<span class="align-middle">거주지</span>
             	</label>
             	<select class="form-control" id="mAddress" name="mAddress">
             		<option value="" disabled selected>거주지를 선택하세요.</option>
             		<option value="O">부산</option> 
             		<option value="X">그 외 지역</option> 
             	</select>
             </div>
             
             <div class="form-group">
             	<label for="phone">
             		<i class="material-icons align-middle">settings_phone</i>
             		<span class="align-middle">연락처</span>
             	</label>
             	<input type="tel" class="form-control" id="phone" name="phone" aria-describedby="pHelp" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
             	<small id="pHelp" class="form-text text-muted">ex)010-1234-5678</small>
             </div>
             
             <div class="text-center">
             	<label class="mr-3">이벤트 등 알림 문자 수신동의 : </label>
                <div class="custom-control custom-radio custom-control-inline">
                  <input type="radio" id="recvTelYes" name="recvTel" class="custom-control-input" value="Y" checked>
                  <label class="custom-control-label" for="recvTelYes">동의함</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline">
                  <input type="radio" id="recvTelNo" name="recvTel" class="custom-control-input" value="N">
                  <label class="custom-control-label" for="recvTelNo">동의 안함</label>
                </div>
             </div>
             
             <div class="form-group">
                <label for="email">
                  <i class="material-icons align-middle">mail</i>
                  <span class="align-middle">이메일 주소</span>
                </label>
                <input type="email" class="form-control" id="email" name="email">
             </div>
              
             <div class="text-center">
             	<label class="mr-3">이벤트 등 알림 메일 수신동의 : </label>
                <div class="custom-control custom-radio custom-control-inline">
                  <input type="radio" id="recvEmailYes" name="recvEmail" class="custom-control-input" value="Y" checked>
                  <label class="custom-control-label" for="recvEmailYes">동의함</label>
                </div>
                <div class="custom-control custom-radio custom-control-inline">
                  <input type="radio" id="recvEmailNo" name="recvEmail" class="custom-control-input" value="N">
                  <label class="custom-control-label" for="recvEmailNo">동의 안함</label>
                </div>
             </div>
             
			
			 <div class="my-3 text-center">
				 <button type="submit" class="btn btn-primary" id="btn" disabled>회원 가입</button>
				 <button type="reset"  class="btn btn-primary ml-5">다시 작성</button>
			 </div>
			
			</form>			
		
        </div>
        <!-- end of Main area -->
        <!-- 여기서 페이지에 따라 내용을 변경 -->
      </div>
    </div>
    <!-- end of middle container -->
    
    <%--include footer.jsp --%>
    <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
    
	<%--include javascript.jsp --%>
	<jsp:include page="/WEB-INF/views/include/javascript.jsp"/>
	
	<script type="text/javascript">
		let chk = 0;
	
		$('input#username').on('focusout',function(){
			let username = $(this).val();
			if(username.length==0){
				return;
			}
			
			$.ajax({
				url : '/member/idCheck/'+username+'.json',
				method : 'GET',
				success : function(data){
					console.log(typeof data);
					console.log(data);
					
					if(!data.count){
						chk++;
						$('small#idHelp').html('사용 가능한 아이디입니다.')
						 .removeClass('text-muted').removeClass('text-danger').addClass('text-success');
					}else{
						$('small#idHelp').html('이미 사용중인 아이디입니다.')
					     .removeClass('text-muted').removeClass('text-success').addClass('text-danger');
					}
				},
				error : function(request, status, error){
					alert('code : ' + request.status + '\n message : ' + request.responseText + '\n error : '+error);
				}
			});
			
		});
		
		$('input#nickname').on('focusout',function(){
			let nickname = $(this).val();
			if(nickname.length==0){
				return;
			}
			
			$.ajax({
				url : '/member/nickCheck/'+nickname+'.json',
				method : 'GET',
				success : function(data){
					console.log(typeof data);
					console.log(data);
					
					if(!data.count){
						chk++;
						$('small#nickHelp').html('사용 가능한 닉네임입니다.')
						 .removeClass('text-muted').removeClass('text-danger').addClass('text-success');
					}else{
						$('small#nickHelp').html('이미 사용중인 닉네임입니다.')
					     .removeClass('text-muted').removeClass('text-success').addClass('text-danger');
					}
				},
				error : function(request, status, error){
					alert('code : ' + request.status + '\n message : ' + request.responseText + '\n error : '+error);
					
				}
			});
			
		});
		
		$('input#password').on('focusout', function(){
			let password = $(this).val();
			if(password.length==0){
				return;
			}
			
			$.ajax({
				url : '/member/pwCheck/'+password+'.json',
				method : 'GET',
				success : function(data){
					console.log(typeof data);
					console.log(data);
					
					if(data){
						chk++;
						$('small#pwHelp').html('사용 가능한 비밀번호입니다.')
						 .removeClass('text-muted').removeClass('text-danger').addClass('text-success');
					}else{
						$('small#pwHelp').html('영문자와 특수문자를 포함, 6~12글자!!')
					     .removeClass('text-muted').removeClass('text-success').addClass('text-danger');
					}
				},
				error : function(request, status, error){
					alert('code : ' + request.status + '\n message : ' + request.responseText + '\n error : '+error);
				}
			})
		});
		
		$('#passwordCheck').keyup(function(){
			if($('#password').val()!=$('#passwordCheck').val()){
				$('small#pwcHelp').html('비밀번호가 일치하지 않습니다!!')
			     .removeClass('text-muted').removeClass('text-success').addClass('text-danger');
			}else{
				chk++;
				$('small#pwcHelp').html('비밀번호가 일치합니다.')
				 .removeClass('text-muted').removeClass('text-danger').addClass('text-success');
			}
			
			if(chk==4){
				$('#btn').prop('disabled',false);
			}
			
		});
		
		
	</script>
	
</body>
</html>