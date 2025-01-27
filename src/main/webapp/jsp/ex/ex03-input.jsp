<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/jsp/ex/ex03.jsp" method="get">
		<label for="dogRadio">강아지</label>
		<input type="radio" id="dogRadio" value="dog" name="animal">
		<label for="catRadio">고냥이</label>
		<input type="radio" id="catRadio" value="cat" name="animal">
		<select name="fruit">
			<option value="banana">바나나</option>
			<option value="strawberry">딸기</option>
			<option value="peach">복숭아</option>
		</select>
		<label for="mintCheck">민트초코</label>
		<input type="checkbox" id="mintcheck" value="mint" name="food">
		<label for="pizzaCheck">피자</label>
		<input type="checkbox" id="pizzacheck" value="pizza" name="food">
		<button type="submit">입력</button>
	</form>
</body>
</html>