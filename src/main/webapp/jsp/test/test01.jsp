<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>
<%
int[] scores = { 80, 90, 100, 95, 80 };

double sum = 0;
for (int i = 0; i < scores.length; i++) {
	sum += scores[i];

}

List<String> scoreList = Arrays.asList(new String[] { "X", "O", "O", "O", "X", "O", "O", "O", "X", "O" });
int count = 0;
for (String i : scoreList) {

	if (i.equals("O")) {

		count += 1;
	}

}
%>
<%!public int sumAll(int a) {

		int sum = 0;

		for (int i = 1; i <= a; i++) {
			sum += i;
		}

		return sum;

	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		점수 평균은
		<span><%=sum / scores.length%></span>
		입니다.
	</div>
	<div>
		채점결과는
		<span><%=count * 10%></span>
		입니다.
	</div>
	<div>
		합은
		<span>
			<%= sumAll(50) %>
		</span>
		입니다.
	</div>
	<div>
		나이는
		<span></span>
		입니다.
	</div>
</body>
</html>