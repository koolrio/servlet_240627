package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head></head><body>");
		if(!id.equals(userMap.get("id"))) {
			out.print("id가 일치하지 않습니다.");
		} else if (!password.equals(userMap.get("password"))) {
			out.print("패스워드가 일치하지 않습니다.");
		} else {
			out.print(userMap.get("name") + "님 환영합니다!");
		}
		out.print("</body></html>");
		
//		Set<String> keySet = userMap.keySet();
//		Iterator<String> keyIterator = keySet.iterator();
//		while(keyIterator.hasNext()) {
//			String key = keyIterator.next();
//			String value = userMap.get(key);
//			if(key == id && value != id) {
//				System.out.println("id가 일치하지 않습니다.");
//			} else if(key == password && value != password) {
//				System.out.println("password가 일치하지 않습니다.");
//			} else {
//				System.out.println();
//			}
//		}
		
	}
	private final Map<String, String> userMap =  new HashMap<String, String>() {
		{
			put("id", "marobiana");
			put("password", "qwerty1234");
			put("name", "신보람");
		}
	};
}
