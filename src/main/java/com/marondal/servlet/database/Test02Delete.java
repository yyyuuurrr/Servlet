package com.marondal.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/test02/delete")
public class Test02Delete extends HttpServlet {
	
	@Override 
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		response.setContentType("text/plain");		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService= MysqlService.getInstance();
		
		mysqlService.connect();
		
		int id = Integer.parseInt(request.getParameter("id"));

		
		String query = "DELETE FROM `url_list` WHERE `id` = " + id  + ";";
		
		int count = mysqlService.update(query);
		
		out.println("실행결과 : " + count);
		
		
		// 페이지 이동 redirect
		response.sendRedirect("/database/test02-list.jsp");
		
		
		
	}
	
}
