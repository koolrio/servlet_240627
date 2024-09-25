package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class quiz02_insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String insertQuery = "insert into `favorite_site` (`name`, `url`, `createdAt`, `updatedAt`)"
							+ "values('"+ name +"','"+ url +"', now(), now());";
		
		try {
			mysqlService.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			mysqlService.disconnect();
			response.sendRedirect("/lesson04/quiz02.jsp");
		}
	} 
}
