package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test07Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");

		//int prices = Integer.parseInt(price);
		
		out.println("<html><head><title>배달의민족</title></head><body>");		
		
		if(!address.contains("서울시")) {		
			out.println("<h2>배달불가 지역입니다</h2>");

		}else if(card.equals("신한카드")) {
			out.println("<h2>결재불가 카드입니다.</h2>");

		}else {			
			out.println("<h3>" + address + "로 배달중</h3><hr>");
			out.println("<h3>결재금액 : " + price + "원</h3>");	
		}
		
		out.println("</body></html>");		

		// localhost:8080/servlet/test07?addreass=서울시중구명동로&prices=23000
	}
}
