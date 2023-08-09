<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연산</title>
</head>
<body>
	<form method="post" action="/jsp/test/test04.jsp">
		<input type="text" name="number1">
		<!-- + - X / -->
		<select name="operator">
			<option>+</option>
			<option>-</option>
			<option>X</option>
			<option>/</option>
		</select>
		<input type="text" name="number2">
		<button type="submit">계산</button>
	</form>

</body>
</html>