<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
	<div id="memberDiv">
		<c:forEach items="${lists }" var="member">
		번호 : ${member.id }<br>
		이름 : ${member.name }<br>
		주소 : ${member.addr }<br>
		이메일 : ${member.email }<br>
			<br>
			<a href="detail/${member.id }">상세보기</a>
			<button type="button" onclick="funDelete(${member.id})">삭제</button>
			<button type="button" class="btnDel" data-mid="${member.id}">삭제 class</button>
			<br>
			<br>
		</c:forEach>
	</div>

	<script type="text/javascript">
	function funDelete(id){ //delete
		$.ajax({
			type : "DELETE",
			url : "/delete/"+id,
		})
		.done(function(resp){
			alert("삭제 성공");
			location.href="/list";
		})
	}
	
	let delfun = function(){
		//alert("함수");
		$.ajax({
			type : "DELETE",
			url : "/delete/"+$(this).data("mid"),
		})
		.done(function(resp){
			alert("삭제 성공");
			location.href="/list";
		})
	}
	
	$("#memberDiv").on("click",".btnDel",delfun);
	
	
	/* $("#memberDiv").on("click",".btnDel", function(){
		$.ajax({
			type : "DELETE",
			url : "/delete/"+$(this).data("mid"),
		})
		.done(function(resp){
			alert("삭제 성공");
			location.href="/list";
		})
	}) */
	
	</script>
</body>
</html>