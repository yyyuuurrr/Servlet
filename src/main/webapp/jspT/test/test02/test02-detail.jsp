<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멜롱 앨범정보</title>
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
		//대상이 되는 노래정보 객체를 얻어 낸다.

		if(idString != null){ // id가 전달이 되면, id 일치 하는 정보
			int id = Integer.parseInt(idString);
			int musicId = (Integer)music.get("id");
			
			if(id == musicId){
				target = music;
			}
		}else if(title != null){ // title이 전달이 되면 title이 일치하는 정보
			if(title.equals(music.get("title"))) {
				target = music;
			}
		}
	}

	int time = (Integer)target.get("time");
	int minute = time / 60;
	int seconde = time % 60;
    
	%>

		<div id="wrap">
		<jsp:include page="header.jsp" />
		<jsp:include page="menu.jsp" />	
		<section>
			<div class="ml-3 p-1">
				<h4 class="p-1">곡 정보</h4>	
			</div>		
			<div class="d-flex border border-success pt-3">
				<div class="d-flex p-3 mt-2">
					<div><img width="200" src="<%= target.get("thumbnail") %>"></div>
					<div class="ml-3">
						<div><h3><%= target.get("title")%></h3></div>
						<div class="text-success"><%= target.get("singer")%></div>	
						<div class="mt-2 small">
							<div class="text-secondary">앨범&emsp;&emsp;<%= target.get("title")%></div>
							<div class="text-secondary">재생시간&emsp;<%= (Integer)target.get("time") / 60%> : <%= seconde%></div>
							<div class="text-secondary">작곡가&emsp;<%= target.get("composer")%></div>
							<div class="text-secondary">작사가&emsp;<%= target.get("lyricist")%></div>			
						</div>
					</div>				
				</div>
			</div>
						
			<div class="contents2">
				<h5 class="ml-3 font-weight-bold">가사</h5>
				<table class="table table-sm mt-2">
					<thead>
						<tr>
							<th>가사 정보 없음</th>
						</tr>
					</thead>
					<tbody>
						<tr></tr>
					</tbody>
				</table>
			</div>
		</section>
		<jsp:include page="footer.jsp" />	
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>