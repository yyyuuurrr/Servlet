<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<div class="container">		
		<h1>메뉴 검색</h1>
		<form method="get" action="/JSP/test/test07.jsp">
			<div class="d-flex col-4 p-0">
				<input type="text" class="form-control col-4" name="menu"> 
				<label class="col-8"><input type="checkbox" name="option"> 4점이하 제외</label>
			</div>
			<button type="submit" class="btn btn-info">검색</button>
		</form>
		
	</div>


</body>
</html>