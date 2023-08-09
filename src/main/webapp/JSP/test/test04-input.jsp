<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산input</title>
</head>
<body>

	<h3>사칙연산</h3>
	
	<form method="post" action="/JSP/test/test04.jsp">
		<input type="text" name="number">
		
		<select name="operator">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">X</option>
		</select>
		<input type="text" name="number2">
		
		<button type="submit">계산</button>
	</form>

</body>
</html>