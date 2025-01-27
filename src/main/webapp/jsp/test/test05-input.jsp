<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
form {
	padding: 12px;
	margin: 12px;
	background-color: aqua;
}
</style>
</head>
<body>
	사칙연산
	<form method="post" action="/jsp/test/test05.jsp">
		<input type="text" name="num1">
		<select name="operations">
			<option value="multiply">곱하기</option>
			<option value="divide">나누기</option>
			<option value="plus">더하기</option>
			<option value="minus">빼기</option>
		</select>
		<input type="text" name="num2">
		<button type="submit">확인</button>
	</form>
	<form method="post" action="/jsp/test/test06.jsp">
		<div>
			<input type="number" name="cm">
			cm
		</div>
		<label for="inchCheck">인치</label>
		<input type="checkbox" id="inchCheck" value="inch" name="unit">
		<label for="yardCheck">야드</label>
		<input type="checkbox" id="yardCheck" value="yard" name="unit">
		<label for="feetCheck">피트</label>
		<input type="checkbox" id="feetCheck" value="feet" name="unit">
		<label for="meterCheck">미터</label>
		<input type="checkbox" id="meterCheck" value="meter" name="unit">
		<button type="submit">확인</button>
	</form>
	<hr />
	<div class="form-check">
		<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
		<label class="form-check-label" for="flexCheckDefault"> Default checkbox </label>
	</div>
	<div class="form-check">
		<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
		<label class="form-check-label" for="flexCheckChecked"> Checked checkbox </label>
	</div>
	<span class="border border-primary">sdf</span>
	<p class="text-start">Start aligned text on all viewport sizes.</p>
	<p class="text-center">Center aligned text on all viewport sizes.</p>
	<p class="text-end">End aligned text on all viewport sizes.</p>
	<p class="text-sm-start">Start aligned text on viewports sized SM (small) or wider.</p>
	<p class="text-md-start">Start aligned text on viewports sized MD (medium) or wider.</p>
	<p class="text-lg-start">Start aligned text on viewports sized LG (large) or wider.</p>
	<p class="text-xl-start">Start aligned text on viewports sized XL (extra-large) or wider.</p>
	<div class="p-3 mb-2 bg-primary text-white">.bg-primary</div>
	<div class="p-3 mb-2 bg-secondary text-white">.bg-secondary</div>
	<div class="p-3 mb-2 bg-success text-white">.bg-success</div>
	<div class="p-3 mb-2 bg-danger text-white">.bg-danger</div>
	<div class="p-3 mb-2 bg-warning text-dark">.bg-warning</div>
	<div class="p-3 mb-2 bg-info text-dark">.bg-info</div>
	<div class="p-3 mb-2 bg-light text-dark">.bg-light</div>
	<div class="p-3 mb-2 bg-dark text-white">.bg-dark</div>
	<div class="p-3 mb-2 bg-body text-dark">.bg-body</div>
	<div class="p-3 mb-2 bg-white text-dark">.bg-white</div>
	<div class="p-3 mb-2 bg-transparent text-dark">.bg-transparent</div>
	<div class="shadow-lg p-3 mb-5 bg-body rounded">Larger shadow</div>
	<div class="ratio ratio-1x1">
		<div>1x1</div>
	</div>
	<div class="ratio ratio-4x3">
		<div>4x3</div>
	</div>
	<div class="ratio ratio-16x9">
		<div>16x9</div>
	</div>
	<div class="ratio ratio-21x9">
		<div>21x9</div>
	</div>
	<div class="fixed-top">...</div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</html>