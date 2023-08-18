package com.marondal.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/favorite/insert")
public class FavoriteInertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setContentType("text/plain");
//		
//		PrintWriter out = response.getWriter();
		
		
		// 사이트 이름과 사이트 주소를 전달 받고, 해당 값을 database에 저장한다. 
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `favorite`\r\n"
				+ "(`name`, `url`) \r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		
		int count = mysqlService.update(query);
		
//		out.println("실행 결과 : " + count);
		
		response.sendRedirect("/database/favorite-list.jsp");
				
	}

}
