package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class ex01 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery = "insert into `used_goods`"
							+ "(`sellerId`, `title`, `description`, `price`)"
							+ "values"
							+ "(1, '고양이 간식 팝니다.', '저희 고양이가 입맛이 까다로워서 잘 안 먹어요 ㅠ', 2000)";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `used_goods`";
		
		try {
			ResultSet resultSet = ms.select(selectQuery);
			while(resultSet.next()) {
				out.println(resultSet.getInt("id"));
				out.println(resultSet.getString("title"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
	}
}
