package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException  {
		
		response.setCharacterEncoding("utf-8");
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		out.println("sevlet  연습문제1");
		
		// 날짜 출력하기
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 M월 d일");
		String todayDate = formatter.format(now);
		
		out.println("오늘의 날짜는 " + todayDate);
		
	}

}
