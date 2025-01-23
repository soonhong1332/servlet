package com.shong.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex11")
public class Ex11Controller extends HttpServlet {

	private final Map<String, String> userMap = new HashMap<String, String>() {
		{
			put("id", "hagulu");
			put("password", "asdf");
			put("name", "김인규");
		}
	};

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");

		out.println("" + "<html>" + "<head><title>로그인</title></head>" + "<body>");

		if (!id.equals(userMap.get("id"))) {

			out.println("id가 일치 하지 않습니다.");

		} else if (!pwd.equals(userMap.get("password"))) {

			out.println("password 가 일치 하지 않습니다.");
		}else {

			out.println(userMap.get("name") + "님 환영합니다.");

		}

		out.println("" + "</body>" + "</html>");

	}

}
