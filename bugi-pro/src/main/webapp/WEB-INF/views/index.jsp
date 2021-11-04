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
        	<%--include left.jsp --%>
        	<jsp:include page="/WEB-INF/views/include/left.jsp"/>
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