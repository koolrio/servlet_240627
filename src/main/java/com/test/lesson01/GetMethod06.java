package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethod06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
//		int sum = number1+number2;
//		int sub = number1-number2;
//		int mul = number1*number2;
//		int div = number1/number2;
		
//		{
//		    "addition": 1570,
//		    "subtraction": 1430,
//		    "multiplication": 105000,
//		    "division": 21
//		}
		PrintWriter out = response.getWriter();
		out.print(				
				"{\"addition\":" + (number1+number2) 
				+ ", \"subtraction\":" + (number1-number2)
				+ ", \"multiplicaion\":" + (number1*number2)
				+ ", \"division\":" + (number1/number2)
				+ "}");
	}
}
