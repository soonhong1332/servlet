
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
List<String> fruitList = new ArrayList<>();
fruitList.add("사과");
fruitList.add("바나나");
fruitList.add("딸기");
request.setAttribute("fruitList", fruitList);  // fruitList를 request 속성에 저장
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<c:forEach var="fruit" items="${fruitList}">
			<tr>
				<td>${fruit}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
