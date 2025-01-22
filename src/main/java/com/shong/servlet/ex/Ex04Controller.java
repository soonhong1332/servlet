package com.shong.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex04")
public class Ex04Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");

		int year = Integer.parseInt(birthday.substring(0, 4));

		int age = 2025 - year + 1;
		
		
		out.println(""
				+"<html>"
				+"<head><title>정보</title></head>"
				+" <body>"
				+"<h3>이륾 :" + name +"</h3>"
				+"<h3>생일 :" + age  +"</h3>"
				+""
				+""
				+""
				+""
				+""
				+""
				+"</body>"
				+"</html>"
				
				
				
				
				);
	}

}
