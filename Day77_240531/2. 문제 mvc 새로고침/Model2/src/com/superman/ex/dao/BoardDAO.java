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
	private final String GET_BOARD_DTO_SQL = "SELECT * FROM " + TABLE_NAME + " WHERE no = ?";
	private final String SELECT_ALL_BOARD_SQL = "SELECT * FROM " + TABLE_NAME + " order by GROUPNUM DESC, STEPNUM ASC";
//	private final String INSERT_BOARD_SQL = 
//			"INSERT INTO " + TABLE_NAME + " (NAME, TITLE, CONTENTS, GROUPNUM) values(?, ?, ?, ?)";
	private final String INSERT_BOARD_SQL = 
			"INSERT INTO " + TABLE_NAME + " (NAME, TITLE, CONTENTS) values(?, ?, ?)";	
//	private final String GET_CURRENT_NUM_SQL = 
//			"SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='testdb' " + 
//			" AND TABLE_NAME='" + TABLE_NAME + "'";
//	private final String GET_CURRENT_NUM_SQL = "SELECT MAX(no) from " + TABLE_NAME;   
	private final String GET_CURRENT_NUM_SQL = "SELECT MAX(NO) FROM " + TABLE_NAME + " WHERE NAME = ?";
	private final String INCREASE_HIT_SQL = 
			"UPDATE " + TABLE_NAME + " SET HIT=HIT+1 WHERE no=?";
	private final String UPDATE_BOARD_SQL = 
			"UPDATE " + TABLE_NAME + " SET NAME=?, TITLE=?, CONTENTS=?, WTIME=NOW() WHERE no=?";
	private final String UPDATE_STEP_NUM_SQL = 
			"UPDATE " + TABLE_NAME + " SET STEPNUM=STEPNUM+1 WHERE GROUPNUM=? AND STEPNUM>=?";
	private final String INSERT_REPLY_SQL = 
			"INSERT INTO " + TABLE_NAME + " (NAME, TITLE, CONTENTS, GROUPNUM, STEPNUM, INDENTNUM) values(?, ?, ?, ?, ?, ?)";
	private final String DELETE_SQL =
			"DELETE FROM " + TABLE_NAME + " WHERE no=?";
	private final String UPDATE_GROUP_NUM = "UPDATE " + TABLE_NAME + " SET GROUPNUM = ? WHERE NO = ?";
	
	
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
	
	public Connection getConnection() {
		Connection conn = null;
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public BoardDTO getBoardDTO(int no) {
		Connection conn = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		BoardDTO dto = new BoardDTO();
		try {
			ps = conn.prepareStatement(GET_BOARD_DTO_SQL);
			ps.setInt(1, no);
			rs = ps.executeQuery();
			if(rs.next())
			{
				dto.setNum(rs.getInt("no"));
				dto.setName(rs.getString("name"));
				dto.setTitle(rs.getString("title"));
				dto.setContents(rs.getString("contents"));
				dto.setHit(rs.getInt("hit"));
				dto.setWtime(rs.getString("wtime"));
				dto.setGroupNum(rs.getInt("groupNum"));
				dto.setStepNum(rs.getInt("stepNum"));
				dto.setIndentNum(rs.getInt("indentNum"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs, ps, conn);
		}		
		return dto;
	}
	
	public void increaseHit(int no) {
		Connection conn = getConnection();
		PreparedStatement ps = null;
		int result = 0;
		try {
			ps = conn.prepareStatement(INCREASE_HIT_SQL);
			ps.setInt(1, no);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}
	}
	
//	public int getCurrentNum() {
//		Connection conn = getConnection();
//		PreparedStatement ps = null;
//		ResultSet rs = null;
//		int curNum = 0;
//		try {
//			ps = conn.prepareStatement(GET_CURRENT_NUM_SQL);
//			rs = ps.executeQuery();
//			if(rs.next()) {
//				curNum = rs.getInt(1);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return curNum + 1;
//	}

	public int getCurrentNum(BoardDTO dto) {				
		Connection conn = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		int curNum = 0;
		try {
			ps = conn.prepareStatement(GET_CURRENT_NUM_SQL);
			ps.setString(1, dto.getName());
			rs = ps.executeQuery();
			if(rs.next()) {
				curNum = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return curNum;
	}
	
	public void updateGroupNum(int curNum) {			
		Connection conn = getConnection();
		PreparedStatement ps = null;
		int result = 0;
		try {
			ps = conn.prepareStatement(UPDATE_GROUP_NUM);
			ps.setInt(1, curNum);
			ps.setInt(2, curNum);
			result = ps.executeUpdate();
		}catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}
	}
	
	public void writeOKDAO(BoardDTO dto) {			
		Connection conn = getConnection();
		PreparedStatement ps = null;
		int curNum = 0;
		int result = 0;
		try {
			ps = conn.prepareStatement(INSERT_BOARD_SQL);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContents());
			result = ps.executeUpdate();
			curNum = getCurrentNum(dto);
			updateGroupNum(curNum);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}
	}
	
	public void modifyOK(BoardDTO dto) {
		Connection conn = getConnection();
		PreparedStatement ps = null;
		int result = 0;
		try {
			ps = conn.prepareStatement(UPDATE_BOARD_SQL);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContents());
			ps.setInt(4, dto.getNum());
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}
	}
	
	public void updateStepNum(BoardDTO dto) {
		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;
		conn = getConnection();
		try {
			ps = conn.prepareStatement(UPDATE_STEP_NUM_SQL);
			ps.setInt(1, dto.getGroupNum());
			ps.setInt(2, dto.getStepNum()+1);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}
	}
	
	public BoardDTO replyDAO(int no) {
		BoardDTO dto = getBoardDTO(no);
		return dto;
	}
	
	public void replyOKDAO(BoardDTO dto) {
		updateStepNum(dto);
		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;
		conn = getConnection();
		try {
			ps = conn.prepareStatement(INSERT_REPLY_SQL);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getTitle());
			ps.setString(3, dto.getContents());
			ps.setInt(4, dto.getGroupNum());
			ps.setInt(5, dto.getStepNum()+1);
			ps.setInt(6, dto.getIndentNum()+1);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}		
	}
	
	public void deleteDAO(int no) {
		Connection conn = null;
		PreparedStatement ps = null;
		int result = 0;
		conn = getConnection();
		try {
			ps = conn.prepareStatement(DELETE_SQL);
			ps.setInt(1, no);
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(ps, conn);
		}		
	}
	
	public void close(ResultSet rs, PreparedStatement ps, Connection conn){
		
			try {
				if(rs != null) rs.close();
				if(ps != null) ps.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public void close(PreparedStatement ps, Connection conn){
		
		try {
			if(ps != null) ps.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> listDAO(){
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		Connection conn = getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = conn.prepareStatement(SELECT_ALL_BOARD_SQL);
			rs = ps.executeQuery();
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
		} finally {
			close(rs, ps, conn);
		}
		return list;
	}
	
	public BoardDTO viewDAO(int no) {
		increaseHit(no);
		BoardDTO dto = getBoardDTO(no);
		return dto;
	}
}