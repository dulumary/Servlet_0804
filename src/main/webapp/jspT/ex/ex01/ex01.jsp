<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정적 방식</title>
</head>
<body>
	<h1> 현재 시간 </h1>

	<%-- date.jsp 를 포함시킨다.  정적방식 --%>
	<%-- <%@ include file="date.jsp" %> --%> 
	
	<%-- date.jsp를 포함시킨다. 동적 방식 --%>
	<jsp:include page="date.jsp" /> 
	
	
</body>
</html>