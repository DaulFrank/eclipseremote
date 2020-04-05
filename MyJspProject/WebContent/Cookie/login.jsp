<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <!-- 声明一个全局变量 -->
	  <%!
         String uname;
      %>

	<%
        boolean flag = false;  
        // 判断Cookie是否已经失效
        Cookie[] cookies = request.getCookies();
        // 不能直接获取某一个单独对象,只能一次性将全部的Cookie对象拿到
        for(Cookie cookie : cookies) {
        	if(cookie.getName().equals("uname")) {  // 逐个判断
        		uname = cookie.getValue();
        		flag = true;
        	}
        }
        if(!flag) {
        	out.print("Cookie已失效!");
        } else {
        	out.print("Cookie:" + uname);
        }
      %>
	<form action="check.jsp" method="post">
		User : <input type="text" name="uname" value=<%=(uname == null ? "" : uname) %>> <br>
		<!-- 由于第一次没有用户登录时是null,所以我们需要判断一下 -->

		Password : <input type="password" name="upwd"> <br> 
		           <input type="submit" value="登录">
	</form>
</body>
</html>