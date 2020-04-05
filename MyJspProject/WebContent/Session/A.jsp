<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 同一个账户可以任意访问本次会话中的所有内容 -->
	<% 
			out.print(session.getAttribute("uname"));
	       
	       	// 第二次请求(看sessionID 和JSESSIONID是否一致)
	       	// Cookie 自帶 JSESSIONID
	       	Cookie[] cookies = request.getCookies();
	       	for(Cookie cookie : cookies) {
	    	   if(cookie.getName().equals("JSESSIONID")) {
	    		   System.out.println("JSESSIONID" + session.getId());
	    	   }
	       }
       
       %>
</body>
</html>