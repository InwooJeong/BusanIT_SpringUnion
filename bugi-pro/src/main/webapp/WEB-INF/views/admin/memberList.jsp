<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        		<p><a href="/admin/memberList">회원 전체 보기</a></p>
        		<p><a href="/admin/reportedList">신고된 회원만 보기</a></p>
        		<p><a href="#">회원 강퇴</a></p>
        		<p><a href="#">회원 등급 변경</a></p>
        		<p><a href="#">회원 포인트 관리</a></p>
        		<p><a href="/admin/adminMain">관리자 페이지 메인</a></p>
        		<p><a href="/customLogout">로그아웃</a></p>
        	</div>
        </div>
        <!-- end of Left Menu  -->
		
		<!-- 여기서 페이지에 따라 내용을 변경 -->
        <!-- Main area -->
        <div class="col-sm-9">
          
          <h3>회원 전체 목록</h3>
          <h5>총 회원 수 : ${pageMaker.totalCount }</h5>
          <hr class="featurette-divider">
          <table class="table-hover" id="mList" border="1">
          	<thead>
          		<tr>
          			<th scope="col" class="text-center">회원 번호</th>
          			<th scope="col" class="text-center">닉네임</th>
          			<th scope="col" class="text-center">성별</th>
          			<th scope="col" class="text-center">거주지</th>
          			<th scope="col" class="text-center">연락처</th>
          			<th scope="col" class="text-center">보유 포인트</th>
          			<th scope="col" class="text-center">이메일 주소</th>
          			<th scope="col" class="text-center">신고된 횟수</th>
          			<th scope="col" class="text-center">등급</th>
          		</tr>
          	</thead>
          	
          	<tbody>
          		<c:forEach var="member" items="${memberList }">
          			<tr>
          				<td class="text-center">${member.MNumber }</td>
          				<td class="text-center">${member.nickname }</td>
          				
          				<td class="text-center">
          					<c:choose>
          						<c:when test="${member.gender eq 'M' }">
          							남성
          						</c:when>
          						<c:when test="${member.gender eq 'F' }">
          							여성
          						</c:when>
          						<c:otherwise>
          							비공개
          						</c:otherwise>
          					</c:choose>
          				</td>
          				
          				<td class="text-center">
          					<c:choose>
          						<c:when test="${member.MAddress eq 'O' }">
          							부산 거주 회원
          						</c:when>
          						<c:otherwise>
          							타 지역 회원
          						</c:otherwise>
          					</c:choose>
          				</td>
          				
          				<td class="text-center"><a href="tel:${member.phone }">${member.phone }</a></td>
          				<td class="text-center"><fmt:formatNumber type="number" maxFractionDigits="3" value="${member.point}" /></td>
          				<td class="text-center"><a href="mailto:${member.email }">${member.email }</a></td>
          				<td class="text-center">${member.reported }</td>
          				
          				<td class="text-center">
          					<c:choose>
          						<c:when test="${member.authVO.auth eq 'ROLE_ADMIN'}">
          							관리자
          						</c:when>
          						<c:otherwise>
          							일반 회원
          						</c:otherwise>
          					</c:choose>
          				</td>
					</tr>          		
          		</c:forEach>
          	</tbody>
          </table>
          
          <nav aria-label="Page navigation example">
          	<ul class="pagination justify-content-center my-4">
          	
          		<li class="page-item ${(pageMaker.prev)?'':'disable'}">
					<a class="page-link" href="${(pageMaker.prev)?'/admin/memberList?pageNum='+=(pageMaker.startPage-1):''}">&lt;</a>
				</li>
          		
          		<c:forEach var="i" begin="${pageMaker.startPage }" end="${pageMaker.endPage }" step="1">
          			<li class="page-item ${(pageMaker.cri.pageNum eq i)?'active':'' }">
          				<a class="page-link" href="/admin/memberList?pageNum=${i }">[${i }]</a>
          			</li>
          		</c:forEach>
          		
          		<li class="page-item ${(pageMaker.next)?'':'disable'}">
					<a class="page-link" href="${(pageMaker.next)?'/admin/memberList?pageNum='+=(pageMaker.endPage+1):''}">&gt;</a>
				</li>
          		
          	</ul>
          </nav>

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