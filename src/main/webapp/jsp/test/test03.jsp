<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
int height = Integer.parseInt(request.getParameter("height"));
int weight = Integer.parseInt(request.getParameter("weight"));

double getBMI = weight / ((height / 100.0) * (height / 100.0));
String condition = "";

if (getBMI < 18.5) {
	condition = "저체중";

} else if ((getBMI >= 18.5 && getBMI < 25)) {
	condition = "정상";

} else if ((getBMI >= 25 && getBMI < 30)) {
	condition = "과체중";

} else {
	condition = "비만";

}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getBMI</title>
</head>
<body><%=getBMI%>
	<%=condition%>
</body>
</html>