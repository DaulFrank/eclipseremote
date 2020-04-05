<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		<%! String uname = "";%>
		<!-- 声明一个全局变量 -->
		<%
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("name")) {
					uname = cookie.getValue();
					break;
				}
			}
		
		%>
		<form action = "check.jsp" method = "post">
			User:<input type = "text" name = "uname" value = <%= uname == null ? " " : uname%>>  <br>
			Password:<input type = "password" name = "upwd"> <br>
			<input type = "submit" value = "登录">
		</form>
</body>
</html>