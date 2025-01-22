package com.shong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test05")
public class Test05Contrioller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");

		response.setContentType("application/json");

		// 파라미터 받기

		PrintWriter out = response.getWriter();
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");

		int num1 = Integer.parseInt(number1);

		int num2 = Integer.parseInt(number2);

		 out.println("{");
	        out.println("\"addition\":\"" + (num1 + num2) + "\",");
	        out.println("\"subtraction\":\"" + (num1 - num2) + "\",");
	        out.println("\"multiplication\":\"" + (num1 * num2) + "\",");

	        // 0으로 나누는지 확인
	        if (num2 == 0) {
	            out.println("\"division\":\"Error: Division by zero\"");
	        } else {
	            out.println("\"division\":\"" + (num1 / num2) + "\"");
	        }

	        out.println("}");
	}

}
