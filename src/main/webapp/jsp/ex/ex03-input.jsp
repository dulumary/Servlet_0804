<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post 입력</title>
</head>
<body>
	
	<form method="post" action="/jsp/ex/ex03.jsp">
		<label>닉네임 : </label> <input type="text" name="nickname">
		
		<br>
		
		<%-- 라디오 버튼 --%>
		<h3>강아지 or 고양이 or 사자</h3>
		<label>강아지<input type="radio" name="animal" value="dog" checked> </label>
		<label>고양이<input type="radio" name="animal" value="cat"></label>
		<label>사자<input type="radio" name="animal" value="lion"></label>
		
		<h3>좋아하는 과일</h3>
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="peach">복숭아</option>
			<option>딸기</option>
		</select>
		
		
		<h3>좋아하는 음식을 모두 고르세요</h3>
		<label>민트초코<input type="checkbox" name="food" value="민초"></label>
		<label>하와이안 피자<input type="checkbox" name="food" value="피자"></label>
		<label>번데기<input type="checkbox" name="food" value="번데기"></label>
		
		
		
		
		<button type="submit">입력</button>
	</form>

</body>
</html>