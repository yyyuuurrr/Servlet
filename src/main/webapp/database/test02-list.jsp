<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.marondal.servlet.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 주소</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

	<%
		MysqlService mysqlService= MysqlService.getInstance();
		mysqlService.connect();
	
		ResultSet resultSet = mysqlService.select("SELECT * FROM `url_list` ORDER BY `id` DESC;");
		
		String delete = request.getParameter("delete");
	%>

	<div class="container">
		<table class="table text-center">
			<thead>
				<tr>
					<th>사이트</th>
					<th>사이트주소</th>
				</tr>			
			</thead>
			<tbody>
			<% while(resultSet.next()) { %>
				<tr>
					<td><%= resultSet.getString("name") %></td>
					<td><a href="<%= resultSet.getString("url") %>"><%= resultSet.getString("url") %></a></td>
					<td><button type="button" class="btn btn-light">삭제</button></td>
				</tr>
			<% } %>				
			</tbody>
		</table>	
	</div>
	
	
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>