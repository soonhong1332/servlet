<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
String animal = request.getParameter("animal");
String fruit = request.getParameter("fruit");
String[] foodArray = request.getParameterValues("food");

String foods = "";

for (int i = 0; i < foodArray.length; i++) {

	foods += foodArray[i];
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=animal%>
	<%=fruit%>
	<%=foods%>
</body>
</html>