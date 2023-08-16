package com.marondal.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null;
	
	private Connection connection;
	private Statement statement;
	
	// 객체 관리 메소드 
	public static MysqlService getInstance() {
		
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	
	// 데이터 베이스 접속
	public void connect() {
		// 데이터베이스 접속 
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 서버 주소, 아이디, 비밀번호 
			String url = "jdbc:mysql://localhost:3307/dulumary_0720";
			String userId = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	// select 쿼리 수행
	public ResultSet select(String query) {
		
		ResultSet resultSet;
		try {
			resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
		
	}
	
	// insert, update, delete
	public int update(String query) {
		// 실행된 행의 개수 
		try {
			int count = statement.executeUpdate(query);
			return count;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return -1;
		}
	}
	
	
	// 데이터 베이스 접속 끊기 
	public void disconnect() {
		try {
			statement.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
