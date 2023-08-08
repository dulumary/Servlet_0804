<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>

	<%
		// 이름과 생년월일을 전달 받고, 
		// 이름과 나이를 테이블 태그로 구성한다. 
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		
		int year = Integer.parseInt(birthday.substring(0, 4));
		
		int age = 2023 - year + 1;
	%>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%= age %></td>
		</tr>
	</table>
</body>
</html>