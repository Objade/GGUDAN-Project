<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뀨단</title>
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


.startBtn {
	background-color: #0C5F6D;
	border: 0px;
	color: white;
	padding: 20px;
	font-size: 20px;
	width: 150px;
	font-weight: 1000;
}

.startBtn:hover {
	cursor: pointer;
	background-color: #247482;
}

</style>
</head>
<body>
<div class="mainForm">
<h1>결과</h1>

<h1 class="example">${dan }<span class="ex"> × </span>${multi }<span class="ex"> = </span>${result }</h1>


<h1 class="result">${msg }</h1>

<a href="form.jsp"><button class="startBtn">다시 하기</button></a>
</div>
</body>
</html>