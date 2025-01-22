package com.shong.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex03")
public class Ex03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		/* response.setContentType("text/html"); */
		 response.setContentType("application/json"); 

		// 파라미터 받기

		PrintWriter out = response.getWriter();
		String day = request.getParameter("day");
		String name = request.getParameter("name");

		String yearString = day.substring(0, 4);

		int year = Integer.parseInt(yearString);

		int age = 2025 - year + 1;
		
		out.println("{\"name\":\""+name+"\", \"age\":" +age + "}");

		
		/*
		 * out.println("" + "<html>" + "<head><title>정보</title></head>" + "<body>" +
		 * "<h2>나이:" + age + " </h2>" + "<h2>이름:" + name + " </h2>" + "</body>" +
		 * "</html>");
		 */
	}

}
