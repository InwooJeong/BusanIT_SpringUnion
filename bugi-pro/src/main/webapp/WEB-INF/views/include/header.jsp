<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!-- header -->
<style>
	#ht{
	 color : white;
	}
	#navbarDropdownMenuLink{
	 color : white;
	}
</style>

<header class="mt-2 py-2">
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container" style="background-image: url('/resources/images/headerbg.jpg'); background-size: cover">
      	<div class="row">
      	
      	<div class="col-sm-2">
         <a class="navbar-brand" href="/"><img src="/resources/images/bugi.png"></a>
      	</div>
      	
      	<div class="col-sm-10">
      	
      	<p class="text-center font-weight-bold mt-3 ht" style="font-size:35px;" 
      	 onclick="location.href='/'" id="ht">부 기 여 지 도 </p>
      	
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
      
         <div class="collapse navbar-collapse" id="navbarNavDropdown" >
         	
            <ul class="navbar-nav">
               
               <li class="nav-item active">
                  <a class="nav-link mx-3 font-weight-bold ht" href="/" id="ht">공지사항</a>
               </li>
               
               <li class="nav-item dropdown active mx-4">
                  <a class="nav-link dropdown-toggle font-weight-bold ht" href="/"
                  id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false"> 현지인 추천 </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                     <a class="dropdown-item" href="/">전체</a>
                     <a class="dropdown-item" href="/">맛집</a>
                     <a class="dropdown-item" href="/">숙소</a> 
                     <a class="dropdown-item" href="/">관광명소</a>
                  </div>
               </li>
            
               <li class="nav-item dropdown active mx-4">
                  <a class="nav-link dropdown-toggle font-weight-bold ht" href="/"
                  id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false"> 탐방후기 </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                     <a class="dropdown-item" href="/">전체</a>
                     <a class="dropdown-item" href="/">맛집</a>
                     <a class="dropdown-item" href="/">숙소</a> 
                     <a class="dropdown-item" href="/">관광명소</a>
                  </div>
               </li>
               
            
               <li class="nav-item active mx-4" >
                  <a class="nav-link font-weight-bold ht" href="/" id="ht">나만의 여행코스</a>
               </li>
            
               <li class="nav-item active mx-4" >
                  <a class="nav-link font-weight-bold ht" href="/" id="ht">QnA</a>
               </li>
            
               <li class="nav-item active mx-3" >
                  <a class="nav-link font-weight-bold ht" href="/" id="ht">포인트 스토어</a>
               </li>
         
            </ul>
         </div>
         </div>
      	</div>
      </div>
   </nav>
</header>