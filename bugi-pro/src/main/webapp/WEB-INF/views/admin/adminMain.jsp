<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <%--include head.jsp --%>
	<jsp:include page="/WEB-INF/views/include/head.jsp"/>
	<%--include javascript.jsp --%>
	<jsp:include page="/WEB-INF/views/include/javascript.jsp"/>
    
 <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container text-right text-secondary" style="font-size: 13px;">
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="/" id="navbarDropdown" 
        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          정보
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="/customLogout">로그아웃</a>
          <a class="dropdown-item" href="/admin/adminUpdate">정보수정</a>
          <a class="dropdown-item" href="/">내정보</a>
        </div>
      </li>
    </ul>
    </div>
  </div>
</nav>

<div class="container text-center mt-5">
      <div class="row">
        <div class="col-lg-6">
          <img src="/resources/images/b1.png" width="300" height="300" class="rounded-circle">
          <p><a class="btn btn-secondary" href="/">홈 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-5">
          <img src="/resources/images/b2.png" width="300" height="300" class="rounded-circle">
          <p><a class="btn btn-secondary" href="/admin/memberList">회원관리 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-6">
          <img src="/resources/images/b3.png" width="300" height="300" class="rounded-circle">
          <p><a class="btn btn-secondary" href="/">게시판관리 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-5">
          <img src="/resources/images/b4.png" width="300" height="300" class="rounded-circle">
          <p><a class="btn btn-secondary" href="#">상품관리 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->
    </div>