package org.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.LoginDao;
import org.entity.Login;

// 控制器实行分发

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// 根据内置对象得到用户的信息
		String name = request.getParameter("uname");
		String password = request.getParameter("upwd");
		
		// 将用户信息封装成一个实体类,传递给模型层
		Login login = new Login(name,password);
		
		LoginDao loginDao = new LoginDao();
		
		// 传输一个JavaBean 封装的实体类
		int cnt = loginDao.login(login);
		
		// 根据从模型层返回的信息反馈给 View,执行具体的操作
		
		if(cnt > 0) {
			// 校验成功 跳转到欢迎界面
			response.sendRedirect("welcome.jsp");
		} else {
			// 校验失败 跳转到 登录界面 进行重新登录
			response.sendRedirect("login.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
