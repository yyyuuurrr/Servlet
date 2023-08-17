package com.marondal.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/test02")
public class Test02Controller extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService= MysqlService.getInstance();
		
		mysqlService.connect();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		String query = "INSERT INTO `url_list`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUES\r\n"
				+ "('" + name + "', '" + url + "');";
		
		int count = mysqlService.update(query);		
		
		out.println("실행결과 : " + count);		
		
		mysqlService.disconnect();
		
		
		// 페이지 이동 redirect
		response.sendRedirect("/datebase/test02-list.jsp");
		
		
		
		
		
		
	}

}
