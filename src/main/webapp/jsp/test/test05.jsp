<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
int num1Int = Integer.parseInt(request.getParameter("num1"));
String operationsString = request.getParameter("operations");
int num2Int = Integer.parseInt(request.getParameter("num2"));

int getInt = 0;
switch (operationsString) {
case "multiply":
	getInt = num1Int * num2Int;
	break;
case "divide":
	getInt = num1Int / num2Int;
	break;
case "plus":
	getInt = num1Int + num2Int;
	break;
case "minus":
	getInt = num1Int - num2Int;
	break;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=getInt %>
</body>
</html>