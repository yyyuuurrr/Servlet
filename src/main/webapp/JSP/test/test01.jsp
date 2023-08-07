<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="java.util.ArrayList" %>  
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 1번 -->
	<% 
		int[] scores = {80, 90, 100, 95, 80};	
	
		int sum = 0;
		for(int i = 0; i < scores.length; i++){
			sum += scores[i];
		}
	%>
	
	<h3>점수 평균은 <%= sum / (double)scores.length %>입니다</h3>
	
	<!-- 2번 -->
	<% 
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
		int count = 10;
		for(String answer: scoreList){
			if(answer.equals("O")){
				count += 10;
			}		
		}	
	%>
	<h3>채점결과는 <%= count %>입니다.</h3>
	
	<!-- 3번 -->
	<% 
		public int sum2(int number){
			int sum1 = 0;
			for(int i = 1; i <= 50; i++){
				sum += i;
			}
			return sum;		
		}
	
	%>
	<h3>1에서 50까지의 합은 <%= sum %>입니다.</h3>
	
	<!-- 4번 -->
	<% 
		String birthDay = "20010820";
			 
		String yearString = birthDay.substring(0, 4);
		
		int year = Integer.parseInt(yearString);
		
		int age = 2023 - year + 1;
	%>
	
	<h2>20010820의 나이는 <%= age %>살 입니다.</h2>
	
	
</body>
</html>