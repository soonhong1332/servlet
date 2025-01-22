package com.shong.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test03")
public class test03Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		out.println("" + "<html>" + "<head><title>리스트</title></head>" + "<body>"

				+ "<ul>");

		for (int i = 0; i <= 30; i++) {

			out.println("<li>" + i + "번쨰 리스트" + "</li>");

		}

		out.println(

				"" + "</ul>" + "</body>" + "</html>");

	}

}
