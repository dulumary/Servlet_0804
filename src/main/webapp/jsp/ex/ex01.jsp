<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>

	<h2> JSP 기본 문법 </h2>
	<!-- html 주석  -->
	<%-- jsp 주석 --%>
	
	<%-- 1부터 10까지의 합을 구한다. --%>
	
	<% 
		int sum = 0; 
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<h3>합계 : <%= sum %> </h3>
	<input type="text" value="<%= sum %>">
	<<%= sum %>> </<%= sum %>>
	
	<%
		// 동물이름 리스트 
		List<String> animalList = new ArrayList<>();
		animalList.add("dog");
		animalList.add("cat");
		animalList.add("lion");
	%>
	
	<ul>
		<li><%= animalList.get(0) %></li>
		<li><%= animalList.get(1) %></li>
		<li><%= animalList.get(2) %></li>
	</ul>
	
	<%!
		// hello world 를 리턴하는 메소드 
		public String getHelloWorld() {
			return "Hello World";
		}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	

</body>
</html>