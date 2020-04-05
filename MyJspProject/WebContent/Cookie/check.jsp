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
          request.setCharacterEncoding("utf-8") ;
          String name = request.getParameter("uname");
          String pwd = request.getParameter("upwd");
          // 在服务端生成一个 Cookie 对象
          Cookie cookie = new Cookie("uname",name);
          
          // 设置保留的最长时间
          cookie.setMaxAge(10);
          
          response.addCookie(cookie);
          //通过响应的方式在服务端生成
          
          
          // 跳转到客户端,便于获取 Cookie(从服务端跳转到的任意界面都是客户端)
          response.sendRedirect("A.jsp"); // 只是一种将信息传入到客户端的一种方式
          // 通过重定向或者请求转发的方式将信息传入到客户端,然后让客户端得到姓名
           
       %>

</body>
</html>