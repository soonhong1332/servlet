package com.shong.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex06")
public class Ex06Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		List<String> list = new ArrayList<>(Arrays.asList("강남역 최고 맛집 소개 합니다.", "오늘 기분 좋은 일이 있었네요.",
				"역시 맛집 데이트가 제일 좋네요.", "집에 가는 길에 동네 맛집가서 안주 사갑니다.", "자축 저 오늘 생일 이에요."));
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String search = request.getParameter("search");

		out.println("" + "<html>" + "<head><title>맛집</title></head>" + "<body>"

		);

		if (search.contains("맛집")) {
			for (String item : list) {

				if (item.contains("맛집")) {

					out.println(item.replace("맛집", "<b>맛집</b>"));
					out.println("<hr/>");

				}

			}
		} else {

			out.println("배고파");
			out.println(search);

		}

		out.println("" + "</body>" + "</html>"

		);
	}

}
