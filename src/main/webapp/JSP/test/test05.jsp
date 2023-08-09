<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>

	<% 
		int length = Integer.parseInt(request.getParameter("length"));	
	
		String[] units = request.getParameterValues("unit");
		String resultString = " ";
		
		double sum = 0;
		for(int i = 0; i < units.length; i++){
			
			if(units[i].equals("inch")){
				double inch = length * 0.39;
				resultString += inch + "in <br>";
				
			}else if(units[i].equals("yard")) {
				double yard = length * 0.010936133;
				resultString += yard + "yd <br>";
				
			}else if(units[i].equals("feet")) {
				double feet = length * 0.032808399;
				resultString += feet + "ft <br>";
				
			}else if(units[i].equals("meter")) {
				double meter = length * 0.01;
				resultString += meter + "m <br>";
			}
		}
	
	%>

	<h2>변환 결과</h2> <br>
	<h2><%= length %>cm </h2>
	<hr>
	<h2><%= resultString %></h2>
	

</body>

</html>