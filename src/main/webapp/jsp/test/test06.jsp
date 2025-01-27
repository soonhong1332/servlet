<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
int cmInt = Integer.parseInt(request.getParameter("cm"));
String[] unitArr = request.getParameterValues("unit");

String units = "";

for (int i = 0; i < unitArr.length; i++) {

	units += unitArr[i] + "&*&";
}

double getInch = 0.0;
double getYard = 0.0;
double getFeet = 0.0;
double getMeter = 0.0;

if (units.contains("inch")) {

	getInch = cmInt * 0.393701;

}

if (units.contains("yard")) {

	getYard = cmInt * 0.0109361;

}

if (units.contains("feet")) {

	getFeet = cmInt * 0.0328084;
	
}

if (units.contains("meter")) {

	getMeter = cmInt * 0.01;
	
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>변환결과</div>
	<span>
		<%=cmInt%>
		cm
	</span>
	<hr />
	<div style="display: flex; flex-direction: column;">
		<span><%=getInch == 0.0? "":getInch + "inch"%></span>
		<span><%=getYard == 0.0? "":getYard + "yard"%></span>
		<span><%=getFeet == 0.0? "":getFeet + "feet"%></span>
		<span><%=getMeter == 0.0? "":getMeter + "merter"%></span>
	</div>
</body>
</html>