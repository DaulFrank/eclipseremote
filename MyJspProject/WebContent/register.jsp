<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Get提交方式:method = "get"和地址栏,超链接,请求方式,默认都是get提交方式
                        缺陷:    a、在地址栏会显示请求信息,如果文件太大的话,地址栏会容纳不下。
              b、不安全,会将用户的信息暴露在地址栏
          Get 与 Post提交方式的区别:
          Post 不会显示信息到地址栏。
          (文件上传操作必须是Post提交方式,最好用POST提交方式)    
      -->
	<form action = "show.jsp" method = "post">
		User:<input type = "text" name = "uname"> <br>
		Password:<input type = "password" name = "upwd"> <br>
		Age:<input type = "text" name = "uage"> <br>
		Hobbies:<input type = "checkbox" name = "uhobby" value = "足球"> 足球 <br> 
		<input type = "checkbox" name = "uhobby" value = "篮球"> 篮球 <br>
		<input type = "checkbox" name = "uhobby" value = "乒乓球">乒乓球<br>
		<input type = "submit" name = "注册">
	 </form>

</body>
</html>