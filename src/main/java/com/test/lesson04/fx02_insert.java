package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/fx02_insert")
public class fx02_insert extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		int price = Integer.valueOf(request.getParameter("price"));
		int sellerId = Integer.valueOf(request.getParameter("sellerId"));
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery = "insert into `used_goods`(`sellerId`, `title`, `description`, `price`)"
							+ "values('"+ sellerId +"', '"+ title +"','"+ description +"', '"+ price +"');";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ms.disconnect();
		response.sendRedirect("/lesson04/fx02_1.jsp");
	}
}
