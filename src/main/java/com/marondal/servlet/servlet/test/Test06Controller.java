package com.marondal.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class Test06Controller extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("application/json");
		
		PrintWriter out =  response.getWriter();
		
		
		// 두 수를 전달 받고, 해당 하는 값을 더하고, 빼고, 곱하고, 나눈 결과를 json으로 만든다. 
		String number1String = request.getParameter("number1");
		String number2String = request.getParameter("number2");
		
		int number1 = Integer.parseInt(number1String);
		int number2 = Integer.parseInt(number2String);
		
		int plus = number1 + number2;
		int minus = number1 - number2;
		int multi = number1 * number2;
		int div = number1 / number2;
		
		// {"addtion":10, "substraction":5, "multiplication":25, "division":2}
		
		out.println("{\"addtion\":" + plus 
				+ ", \"substraction\":" + minus
				+ ", \"multiplication\":" + multi
				+ ", \"division\":" + div + "}");
	}
}
