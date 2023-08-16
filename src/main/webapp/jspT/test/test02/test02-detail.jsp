<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>곡 정보</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>

	<%@ include file="music-data.jsp" %>

	<%
  
    String idString = request.getParameter("id");
    
    String title = request.getParameter("title");
    
   
   	Map<String, Object> target = null; 
    for(Map<String, Object> music:musicList) {
    	// 대상이 되는 노래정보 객체를 얻어 낸다. 
    	if(idString != null) {// id가 전달이 되면, id 일치 하는 정보
    		int id = Integer.parseInt(idString);
    		int musicId = (Integer)music.get("id"); 
    		
    		if(id == musicId) {
    			target = music;
    		}
    		
    	} else if(title != null) { // title이 전달이 되면 title이 일치하는 정보
    		if(title.equals(music.get("title"))) {
    			target = music;
    		}
    	}
    	
    }
    
    
%>

	<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />
		<section class="contents">
		
			<div class="music-info mt-4">
			
				<h3>곡 정보</h3>
				<div class="music d-flex border border-success p-3 mt-3">
				<div><img width="200" src="<%= target.get("thumbnail") %>"> </div>
				<div class="ml-4">
					<div class="display-4"><%= target.get("title") %></div>
					<div class="text-success mt-1"><%= target.get("singer") %></div>
					<div class="small text-secondary mt-2">
						<div>앨범 : <%= target.get("album") %></div>
						<div>재생 시간 : <%= target.get("time") %></div>
						<div>작곡가 : <%= target.get("composer") %></div>
						<div>작사가 : <%= target.get("lyricist") %></div>
					</div>
					
				</div>
			</div>
		
			</div>
			
			<div class="mt-4">
				<h3>가사</h3>
				<hr>
				<div>가사 정보 없음</div>
			</div>
		</section>
		<jsp:include page="footer.jsp" />
	
	</div>
	
	


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>