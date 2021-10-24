package com.learning.config;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static String url="jdbc:mysql://localhost:3306/learning";
	private static String user="root";
	private static String password="root";
	
	private DBUtil() {};
	public static Connection getConnection(){
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn=DriverManager.getConnection(url, user, password);
				return conn;
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;	
	}
}
