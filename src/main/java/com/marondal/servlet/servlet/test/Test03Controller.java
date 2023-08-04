package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head><title>[단독]고양이가 야옹해</title></head><body>");
		out.println("<h1>[단독] 고양이가 야옹해 </h1>");
		out.println("<div>기사 입력시간 : 2023/08/02 16:10:12</div>");
		out.println("<hr> <div>끝</div> </body></html>");
		
	}
	
	

}
