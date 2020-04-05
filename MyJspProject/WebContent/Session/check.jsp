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
		if (name.equals("zs") && pwd.equals("abc")) {
			// 只有登录成功,session中才会有 uname / upwd
			// 登录成功后分配给用户一个 SessionID
			session.setAttribute("uname", name);
			session.setAttribute("upwd", pwd);
            
			// 设置页面最大非活动时间(保证其安全性)
			//session.setMaxInactiveInterval(10);
			
			
			// 检测服务端Session和客户端Cookie自带的JSESSIONID是否一致
			System.out.println("sessionID" + session.getId());
			
			// Cookie在服务端生成,通过响应传送到客户端
			// cookie 产生时自带一个 JSESSIONID
			Cookie cookie = new Cookie("uname",name);
			response.addCookie(cookie);
			
			request.getRequestDispatcher("welcome.jsp").forward(request, response);

		} else {
			// 登录失败就重新登录
			response.sendRedirect("login.jsp");
		}
	%>

</body>
</html>