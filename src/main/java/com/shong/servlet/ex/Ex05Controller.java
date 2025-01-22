package com.shong.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex05")
public class Ex05Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String address = request.getParameter("address");
		String card = request.getParameter("card");
		String price = request.getParameter("price");

		String showAddressString = "";

		if (!address.contains("서울시")) {
			showAddressString = "<div>" + address + "배달중" + "</div>";

		} else {
			showAddressString = "<div> 배달 불가 지역입니다 <div>";

		}

		if (card.equals("신한카드")) {
			showAddressString = "<div> 결제 불가 카드 입니다 <div>";

		}

		out.println("" + "<html>" + "<head><title>정보</title></head>" + " <body>" + showAddressString + "<hr/>"

				+ "<div>" + "결제금액 : " + price + "원" + "</div>" + "" + "</body>" + "</html>"

		);
	}

}
