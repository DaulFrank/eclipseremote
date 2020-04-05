package org.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.entity.Login;

// ģ�Ͳ�(��װ�߼����߷�װʵ���� -- ���� , ʵ��ĳ�ֹ���)

public class LoginDao {
	
	private static  String URL = "jdbc:mysql://localhost:3306/sqltest";
	private static  String User = "root";
	private static  String Password = "root";
	
	//��װҵ���߼�,ʵ��У���û���Ϣ�Ĺ���
	
	public int login(Login login) {
		
		Connection connection = null;
		PreparedStatement pstam = null;
		ResultSet rs = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection(URL, User, Password);
			
			String sql = "select count(*) from login where uname = ? && upwd = ?";
			
			pstam = connection.prepareStatement(sql);
			
			pstam.setString(1,login.getName());
			pstam.setString(2,login.getPassword());
			
			rs = pstam.executeQuery();
			
			if(rs.next()) {
				return 1;
			} else {
				return 0;
			}
			
		} catch(ClassNotFoundException e) {
			e.printStackTrace();
		} catch(SQLException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		finally {
			try {
				if(rs != null) rs.close();
				if(pstam != null) pstam.close();
				if(connection != null) connection.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return -1;
	}
}
