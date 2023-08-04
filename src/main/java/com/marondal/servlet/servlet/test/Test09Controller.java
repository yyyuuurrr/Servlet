package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		
		// 이름과 자기소개를 전달 받고. 정리된 내용을 html로 response에 담는다.
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println("<html><head><title>자기소개</title></head><body>");
		
		out.println("<h2>" + name + "님의 지원이 완료되었습니다. <h2>");
		out.println("<hr><div>지원내용</div> <div>" + introduce + "</div>");
		
		out.println("</body></html>");
		
		
	}
	
}
