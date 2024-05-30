package com.superman.www.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.superman.www.dto.BoardDTO; 

public class BoardDAO {
	private static BoardDAO boardDAO = new BoardDAO();  //객체개수를 하나로 제한하기위해서(싱글톤패턴)
	private String CONNECTION_POOL_RESOURCE_NAME = "jdbc/testdb";
	private final String TABLE_NAME = "board";
	private DataSource dataSource;
	private final String SELECT_ALL_BOARD_SQL = "SELECT no, title, name, wtime, rcnt FROM " + TABLE_NAME + " ORDER BY no DESC";

	private BoardDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/" + CONNECTION_POOL_RESOURCE_NAME);
		} catch (NamingException e) {
			e.printStackTrace();
		}		
	}

	public static BoardDAO getBoardDAO() {
		return boardDAO;
	}

	public ArrayList<BoardDTO> listDAO()
	{
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();

		try(Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(SELECT_ALL_BOARD_SQL);
				ResultSet rs = pstmt.executeQuery()) 
		{
			while(rs.next())
			{
				BoardDTO dto = new BoardDTO();
				dto.setNo(rs.getInt("no"));
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setWtime(rs.getString("wtime"));
				dto.setRcnt(rs.getInt("rcnt"));
				list.add(dto);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} 
		return list;		
	}	
}