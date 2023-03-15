<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String cpath = request.getContextPath();
%>    
    
<!DOCTYPE html>
<html>
<head>
<style>
body {
 background-color: #0CC0DF;
}


.main {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
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

<meta charset="UTF-8">
<title>뀨단</title>
</head>
<body>

<div class="main">
<div class="mainImage"><img src="<%=cpath %>/img/뀨단.png"></div>

<a href="<%= cpath %>/form.jsp"><button class="startBtn">시작하기</button></a>
</div>

</body>
</html>