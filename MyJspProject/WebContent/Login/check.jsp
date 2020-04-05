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
          /*
	                             页面跳转的两种方式:
	           			           	请求转发		重定向(主要利用response对象)
	                             地址栏是否发生改变                      不变                                    变    (请求了两次)
	                            
	                             是否保留第一次请求                       保留                                  不保留 
	                             时的数据
	                             
	                             请求次数                                           1                2
	                             
	                             跳转发生位置                                 服务端内部                           重新回到客户端,由客户端再次请求 
                                                         
          */ 
          
          request.setCharacterEncoding("utf-8") ;
          String name = request.getParameter("uname");
          String pwd = request.getParameter("upwd");
          if(name.equals("zs") && pwd.equals("abc")) {
        	  // 重定向(可能会造成数据的丢失)
        	  //response.sendRedirect("success.jsp");
        	  // 请求转发的方式(服务端内部进行跳转)
        	  request.getRequestDispatcher("success.jsp").forward(request, response);
          } else {
        	  //out.print(pwd + "<br>");
        	  out.print("登录失败,用户名或者密码错误");
          }
       %>

</body>
</html>