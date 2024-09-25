package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_delete")
public class quiz02_delete extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.valueOf(request.getParameter("id"));
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String deleteQuery = "delete from `favorite_site` where id=" + id;
		
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			mysqlService.disconnect();
			response.sendRedirect("/lesson04/quiz02.jsp");
		}
		
	}

}
