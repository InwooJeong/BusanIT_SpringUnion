<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
조인 테스트
<form action="/member/joinTest" method="POST">
ID : <input type="text" name="id">
PW : <input type="password" name="passwd">
NICK : <input type="text" name="nickname">
GENDER : <input type="text" name="gender">
ADDRESS : <input type= "text" name="mAddress">
PHONE : <input type="text" name="phone">
EMAIL : <input type="text" name="email">
<button type="submit" class="btn">TEST</button>
</form>
</body>
</html>