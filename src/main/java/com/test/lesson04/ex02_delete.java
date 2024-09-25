package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_delete")
public class ex02_delete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();

		String deleteQuery = "delete from `new_user` where id=" + id;
		
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}
