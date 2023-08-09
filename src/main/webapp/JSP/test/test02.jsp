<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습문제2 BMI</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>

	<% 
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		
		//BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
		double bmi = weight / ((height * 100.0) * (height / 100.0));
		
		String status = null;
		if(bmi <= 10){
			status = "저체중";
		}else if(bmi <= 25){
			status = "정상";
		}else if(bmi <= 30){
			status = "과체중";
		}else {
			status = "비만";
		}		
	%>
	
	<div class="container">
		<h1>BMI 측정결과</h1>
		<div class="display-4">당신은 <span class="text-info"><%= status %></span> 입니다.</div>
		<div>BMI 수치 <%= bmi  %></div>
	</div>


</body>
</html>