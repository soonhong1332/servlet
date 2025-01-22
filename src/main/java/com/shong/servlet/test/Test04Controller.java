package com.shong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test04")
public class Test04Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String number = request.getParameter("number");
		
		int getNumber = Integer.parseInt(number);
		

		out.println("" + "<html>" + "<head><title>"+number+"단"+"</title></head>" + "<body>"

				+ "<ul>");

		for (int i = 0; i <= 9; i++) {

			out.println("<li>"+number+"x" + i + "="+ getNumber*i + "</li>");

		}

		out.println(

				"" + "</ul>" + "</body>" + "</html>");
		
		
	}

}
