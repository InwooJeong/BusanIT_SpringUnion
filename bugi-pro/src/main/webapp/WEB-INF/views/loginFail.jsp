<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%--include head.jsp --%>
	<jsp:include page="/WEB-INF/views/include/head.jsp"/>
	<style>
		.carousel-inner img {
 			 width: 100%;
 			 height: 650px;
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
        <div class="border border-primary p-4 rounded">
		<form action="/login" method="POST">
			
			
			<label for="inputId">ID</label>
			<input type="text" name="username" id="inputId" class="form-control">
		
			<label for="inputPW">Password</label>
			<input type="password" name="password" id="inputPW" class="form-control">
		
			<div class="custom-control custom-checkbox text-center mb-3">
    		  <input type="checkbox" class="custom-control-input" id="customCheck1" name="_spring_security_remember_me" value="True">
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
	
	<font color="red">${requestScope.loginFailMsg}</font>
	
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
        </div>
        <!-- end of Left Menu  -->
		
		<!-- 여기서 페이지에 따라 내용을 변경 -->
        <!-- Main area -->
        <div class="col-sm-9">
          
            <!-- Carousel -->
   			<div id="carouselExampleControls" class="carousel slide container" data-ride="carousel">
     		  <div class="carousel-inner ">
       			 <div class="carousel-item active">
       			   <img src="/resources/images/b1.png" class="d-block w-100">
       			 </div>
        	     <div class="carousel-item">
          		   <img src="/resources/images/b2.png" class="d-block w-100">
                 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b3.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b4.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b5.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b6.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b7.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b8.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b9.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b10.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b11.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b12.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b13.png" class="d-block w-100">
        		 </div>
        		 <div class="carousel-item">
          		   <img src="/resources/images/b14.png" class="d-block w-100">
        		 </div>
      		  </div>
      		  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
     		    <span class="sr-only">Previous</span>
      		  </a>
      		  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        		<span class="carousel-control-next-icon" aria-hidden="true"></span>
        		<span class="sr-only">Next</span>
      		  </a>
    	   </div>
   	       <!-- end of Carousel -->

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
</body>
</html>