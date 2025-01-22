package com.shong.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloController extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		// 결과물에 대한 정보 설정
		// Response Header
		// character set: utf-8
		response.setCharacterEncoding("utf-8");
		// 데이터 타입
		// MIME
		// text/plain : 규격없는 문자열
		response.setContentType("text/plain");

		PrintWriter out = response.getWriter();
		out.println("helloWorld");

	}

}
