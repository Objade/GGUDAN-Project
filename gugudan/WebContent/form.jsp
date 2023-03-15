<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="gugudan.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
body {
 background-color: #0CC0DF;
}
.mainForm {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	color: white;
}

.example {
	color: #FFDF2B;
	font-size: 100px;
}

.ex {
	color: white;
}

.answer input[type="number"] {
	font-size: 20px;
	padding: 10px;
	box-sizing: border-box;
	height: 48px;
	border: 0px;
}

.answer input[type="submit"] {
	background-color: #0C5F6D;
	border: 0px;
	color: white;
	padding: 10px;
	font-size: 20px;
	font-weight: 1000;
    box-sizing: border-box;
	
}

.answer input[type="submit"]:hover {
	cursor: pointer;
	background-color: #247482;
}

</style>

<title>뀨단</title>
</head>
<body>

<div class="mainForm">
<h1>문제를 풀어봅시다!</h1>




<%
	Gugudan gu = (Gugudan)session.getAttribute("gu");

	if(gu == null) {
		gu = new Gugudan();
		session.setAttribute("gu", gu);
	}
	
	int dan = gu.getDan();
	int multi = gu.getMulti();
	
	session.setAttribute("dan", dan);
	session.setAttribute("multi", multi);
	
	
%>


<h1 class="example">${dan }<span class="ex"> × </span>${multi }<span class="ex"> = </span>?</h1>

<div class="answer">
<form action="action.jsp">
	
	<input type="number" name="user" min="0" placeholder="정답을 입력하세요" required>
	<input type="submit" value="입력">
</form>
</div>

</div>


</body>
</html>