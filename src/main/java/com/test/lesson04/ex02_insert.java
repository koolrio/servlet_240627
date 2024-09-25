package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class ex02_insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		/*response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");*/
		
		String name = request.getParameter("name");
		String yyyymmdd = request.getParameter("yyyymmdd");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "insert into `new_user`(`name`, `yyyymmdd`, `introduce`, `email`)"
							+ "values('"+ name + "', '"+ yyyymmdd + "', '"+ introduce +"', '"+ email +"')";
		
			try {
				mysqlService.update(insertQuery);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			mysqlService.disconnect();
			response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
