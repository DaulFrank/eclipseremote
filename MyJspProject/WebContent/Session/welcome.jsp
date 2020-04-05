<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	欢迎您:
	<%
		// session.getAttribute() 返回值是 Object,需要进行强制转换
       String name = (String)session.getAttribute("uname");
       if(name != null) {    // 未输入正确的账户时无法进入欢迎界面，需要重新输入账户
    	   out.print(name);
       } else {
    	   response.sendRedirect("login.jsp");
       }
       
    %>
   	<!-- 注销 -->
	<a href="back.jsp">退出登录</a>
</body>
</html>