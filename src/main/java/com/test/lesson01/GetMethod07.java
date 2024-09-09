package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethod07 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>order result</title></head><body>");		
		if(!address.contains("서울시")) {
			out.print("Your location is not valid for delivery at the moment");
		} else if (card.contains("신한")) {
			out.print("Shincard is unable");
		} else {
			out.print(address + " <b>Get ready for Delivery</b>");
			out.print("<br>Payment amount: " + price);
		}
		out.print("</body></html>");
	}
}
