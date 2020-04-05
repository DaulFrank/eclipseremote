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
			// 创建 Cookie 对象
			Cookie cookie1 = new Cookie("name","ls");
			Cookie cookie2 = new Cookie("pwd","123");
			// 服务端生成 Cookie 对象
			response.addCookie(cookie1);
			response.addCookie(cookie2);
			// 发送到 客户端
			response.sendRedirect("requese.jsp");
			
		%>
</body>
</html>