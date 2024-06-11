package com.superman.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.superman.www.dao.DAO;

public class DAO {
	private static DAO dao = new DAO();
	private String CONNECTION_POOL_RESOURCE_NAME = "jdbc/testdb";
	private final String TABLE_NAME = "member";
	private DataSource dataSource;	

	private DAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/" + CONNECTION_POOL_RESOURCE_NAME);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public int checkId(String id) {
		String sql = "SELECT * FROM " + TABLE_NAME + " WHERE ID = '" + id +"'";
		int result = 0;
		try(Connection conn = dataSource.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			if(rs.next()) result = 0;
			else result = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	public static DAO getBoardDAO() {
		return dao;
	}
}