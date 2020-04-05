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
		// 只设置 Post 方式
		request.setCharacterEncoding("utf-8");
		// 通过 name 属性 来获取 value
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		// 强制转换
		int age = Integer.parseInt(request.getParameter("uage"));
		String[] hobbies = request.getParameterValues("uhobby");
	%>
	注册成功! <br>
	用户信息如下 : <br>
	User Name : <%=name %> <br>
	User password  : <%=pwd %> <br>
	User age  : <%=age %> <br>
	User Hobbies: <br>
	<%
		// 有可能一个都不选,所以要特殊处理一下,否则会出现 500
		if(hobbies != null) {
			for(String hobby : hobbies) {
				out.print(hobby + " ");
			}
		}
	%>
</body>
</html>