<%@page import="gugudan.Gugudan"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<%
	
	Gugudan gu = (Gugudan)session.getAttribute("gu");

	int dan = (Integer)session.getAttribute("dan");
	int multi = (Integer)session.getAttribute("multi");

	int user = Integer.parseInt(request.getParameter("user"));
	session.setAttribute("user", user);
	
	int result = gu.result(dan, multi);
	session.setAttribute("result", result);

	
	String msg = gu.game(user, result);
	request.setAttribute("msg", msg);
	
	session.removeAttribute("gu");
	
	request.getRequestDispatcher("result.jsp").forward(request, response);

%>


	
</body>
</html>