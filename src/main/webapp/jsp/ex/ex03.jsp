<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post method</title>
</head>
<body>

	<%
		String nickname = request.getParameter("nickname"); 
	
		String animal = request.getParameter("animal");
		
		String fruit = request.getParameter("fruit");
		
		// String food = request.getParameter("food");
		String[] foods = request.getParameterValues("food");
		
		String foodString = "";
		// 민초, 피자
		for(int i = 0; i < foods.length; i++) {
			// "민초" + "피자"
			foodString += foods[i] + " "; // foodString = foodString + foods[i] + " ";;
		}
	%>
	
	<h4><%= nickname %></h4>
	<h4><%= animal %></h4>
	<h4><%= fruit %></h4>
	<!-- 민초 피자 -->
	<h4><%= foodString %></h4>

</body>
</html>