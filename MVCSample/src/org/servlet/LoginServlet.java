package org.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dao.LoginDao;
import org.entity.Login;

// ������ʵ�зַ�

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		// �������ö���õ��û�����Ϣ
		String name = request.getParameter("uname");
		String password = request.getParameter("upwd");
		
		// ���û���Ϣ��װ��һ��ʵ����,���ݸ�ģ�Ͳ�
		Login login = new Login(name,password);
		
		LoginDao loginDao = new LoginDao();
		
		// ����һ��JavaBean ��װ��ʵ����
		int cnt = loginDao.login(login);
		
		// ���ݴ�ģ�Ͳ㷵�ص���Ϣ������ View,ִ�о���Ĳ���
		
		if(cnt > 0) {
			// У��ɹ� ��ת����ӭ����
			response.sendRedirect("welcome.jsp");
		} else {
			// У��ʧ�� ��ת�� ��¼���� �������µ�¼
			response.sendRedirect("login.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
