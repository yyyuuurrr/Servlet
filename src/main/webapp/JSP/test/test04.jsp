<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산</title>
</head>
<body>

	<% 
		int number = Integer.parseInt(request.getParameter("number"));	
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		String operator = request.getParameter("operator");	
		
		double result = 0;
		if(operator.equals("+")){ 
			result = number +  number2; 
		
		} else if(operator.equals("-")){ 
			result = number -  number2; 
		
		}else if(operator.equals("*")){ 
			result = number * number2;
			
		}
		
	%>
	
		
		<h2>계산결과</h2>
		<div><%= number %><%= operator %><%= number2 %> = <span class="text-primary"><%= result %></span></div>

</body>
</html>