<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>

<!-- 로그인 안했을 때 - 로그인/정보찾기(ID/PW)/회원가입 기능이 필요-->
<div class="border border-primary p-4 rounded">
	<%-- <sec:authorize access="isAnonymous()"> --%>
	<sec:authorize access="!isAuthenticated()">
		<form action="/login" method="POST">
			
			
			<label for="inputId">ID</label>
			<input type="text" name="username" id="inputId" class="form-control">
		
			<label for="inputPW">Password</label>
			<input type="password" name="password" id="inputPW" class="form-control">
		
			<div class="custom-control custom-checkbox text-center mb-3">
    		  <input type="checkbox" class="custom-control-input" id="customCheck1" name="remember-me">
     		  <label class="custom-control-label" for="customCheck1">자동 로그인</label>
   			</div>
   		
   			<button class="btn btn-lg btn-primary btn-block" type="submit">
   			  <i class="material-icons align-middle">login</i>
      		  <span class="align-middle">로그인</span>
   			</button>
   		
   			<div class="text-center text-secondary">
    		  <a href="/">내 정보 찾기</a>
      	  | <a href="/member/join">회원가입</a>
    		</div>
		</form>
	</sec:authorize>
	
	<%-- <font color="red">${requestScope.loginFailMsg}</font> --%>
	
	<sec:authorize access="isAuthenticated()">
		<p><sec:authentication property="principal.memberVO.nickname"/>님 환영합니다!</p>
		<p><a href="/">보유 포인트 : <sec:authentication property="principal.memberVO.point"/> pt</a></p>
		<p><a href="/">내 정보 보기</a></p>
		<p><a href="/">내가 좋아하는 글</a></p>
		
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<p><a href="/admin/adminMain">관리자 페이지</a></p>
		</sec:authorize>
		
		<a href="/customLogout">로그아웃</a>
	</sec:authorize>
</div>

<!-- 로그인 여부 상관없이 가져가야 할 글 -->
<div class="border border-info p-4 rounded mt-2">
	
	<p class="text-center">이달의 인기글</p>
	<hr class="featurette-divider">
	<div class="text-center">
    	  <a href="/">추천</a>
        | <a href="/">후기</a>
        | <a href="/">여행코스</a>
    </div>
    <hr class="featurette-divider">
    <table class="table-hover" id="board">
    	<thead>
    		<tr>
    			<th scope="col" class="text-center">랭킹</th>
    			<th scope="col" class="text-center">제목</th>
    		</tr>
    	</thead>
    	<tbody>
    		<tr>
    			<td class="text-center">1</td>
    			<td class="text-center" style="display: block; width:170px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;" 
    			title="첫번째 인기글 입니다.@@@@@@@@@@@@@@@@@">첫번째 인기글 입니다.@@@@@@@@@@@@@@@@@</td>
    		</tr>
    		<tr>
    			<td class="text-center">2</td>
    			<td class="text-center" style="display: block; width:170px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;" 
    			title="두번째 인기글 입니다.@@@@@@@@@@@@@@@@@">두번째 인기글 입니다.@@@@@@@@@@@@@@@@@</td>
    		</tr>
    		<tr>
    			<td class="text-center">3</td>
    			<td class="text-center" style="display: block; width:170px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;" 
    			title="세번째 인기글 입니다.@@@@@@@@@@@@@@@@@">세번째 인기글 입니다.@@@@@@@@@@@@@@@@@</td>
    		</tr>
    		<tr>
    			<td class="text-center">4</td>
    			<td class="text-center" style="display: block; width:170px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;" 
    			title="네번째 인기글 입니다.@@@@@@@@@@@@@@@@@">네번째 인기글 입니다.@@@@@@@@@@@@@@@@@</td>
    		</tr>
    		<tr>
    			<td class="text-center">5</td>
    			<td class="text-center" style="display: block; width:170px; overflow:hidden; white-space:nowrap; text-overflow:ellipsis;" 
    			title="다섯번째 인기글 입니다.@@@@@@@@@@@@@@@@@">다섯번째 인기글 입니다.@@@@@@@@@@@@@@@@@</td>
    		</tr>
    	</tbody>
    </table>
	
</div>