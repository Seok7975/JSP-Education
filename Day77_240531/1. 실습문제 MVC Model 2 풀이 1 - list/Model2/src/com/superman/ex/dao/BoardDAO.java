package com.superman.ex.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.superman.ex.dto.BoardDTO;

public class BoardDAO {
	private static BoardDAO boardDAO = new BoardDAO();
	private String CONNECTION_POOL_RESOURCE_NAME = "jdbc/testdb";
	private final String TABLE_NAME = "mvcboard";
	private DataSource dataSource;	
	
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
	
	public ArrayList<BoardDTO> listDAO(){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		final String sql = "SELECT * FROM " + TABLE_NAME + " order by GROUPNUM DESC, STEPNUM ASC";

		try(Connection conn = dataSource.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery())
		{
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getInt("no"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setHit(rs.getInt("hit"));
				dto.setWtime(rs.getString("wtime"));
				dto.setGroupNum(rs.getInt("groupNum"));
				dto.setStepNum(rs.getInt("stepNum"));
				dto.setIndentNum(rs.getInt("indentNum"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}