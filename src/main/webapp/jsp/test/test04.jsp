<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDate"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<%
String type = request.getParameter("type");

Date date = new Date();

SimpleDateFormat formatter1 = new SimpleDateFormat();
SimpleDateFormat formatter2 = new SimpleDateFormat();
SimpleDateFormat formatter3 = new SimpleDateFormat();

if (type.equals("day")) {

	formatter1 = new SimpleDateFormat("yyyy");
	formatter2 = new SimpleDateFormat("MM");
	formatter3 = new SimpleDateFormat("dd");

} else {
	formatter1 = new SimpleDateFormat("HH");
	formatter2 = new SimpleDateFormat("mm");
	formatter3 = new SimpleDateFormat("ss");
}

String dateTimeString1 = formatter1.format(date);
String dateTimeString2 = formatter2.format(date);
String dateTimeString3 = formatter3.format(date);

String aa = "<div></div>";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
p {
	width: 100%;
	background-color: aliceblue;
	text-align: center;
	font-size: 64px;
	font-weight: 100;
	font-family: fantasy;
}
</style>
</head>
<body>
	<%=type.equals("day")
		? "<p>오늘 날짜 <b>" + dateTimeString1 + "</b>년 <b>" + dateTimeString2 + "</b>월 <b>" + dateTimeString3
				+ "</b>일 </p>"
		: "<p>현재 시간 <b>" + dateTimeString1 + "</b>시 <b>" + dateTimeString2 + "</b>분 <b>" + dateTimeString3
				+ "</b>초 </p>"%>
</body>
</html>