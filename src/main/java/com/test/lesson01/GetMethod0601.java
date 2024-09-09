package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz0601")
public class GetMethod0601 extends HttpServlet{
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
//		String number1param = request.getParameter("number1");
//		String number2param = request.getParameter("number2");
		Integer number1 = Integer.parseInt(request.getParameter("number1"));
		Integer number2 = Integer.parseInt(request.getParameter("number2"));
//		Integer number2 = Integer.parseInt(number2param);
		
		PrintWriter out = response.getWriter();
		out.print(
				"{\"addition\":" +(number1+number2)
				+", \"subtraction\":" +(number1-number2)
				+", \"multiplication\":" + (number1 * number2)
				+", \"division\":" + (number1/number2) 
				+"}");		
	}
}
