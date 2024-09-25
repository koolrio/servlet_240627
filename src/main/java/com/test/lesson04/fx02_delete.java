package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/fx02_delete")
public class fx02_delete extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		int id = Integer.valueOf(request.getParameter("id"));
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deletQuery = "delete from `used_goods` where id=" + id;
		
		try {
			mysqlService.update(deletQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect();
		response.sendRedirect("/lesson04/fx02_1.jsp");
	}
}
