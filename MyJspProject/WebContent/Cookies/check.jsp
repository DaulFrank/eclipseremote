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
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("uname");
			String pwd = request.getParameter("upwd");
		
			Cookie cookie = new Cookie("name",name);
			
			response.addCookie(cookie);
			// 跳转到客户端,便于获取 Cookie(从服务端跳转到的任意界面都是客户端)
			response.sendRedirect("client.jsp");
		%>
</body>
</html>