package com.superman.www;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDAO { // Data Access Object
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";
	private String user = "root";
	private String password = "1234";

	public BoardDAO() {
		try {
			Class.forName(driver);
		} catch(ClassNotFoundException e) {
			System.out.println("드라이버 로드 실패");
		}
	}
	
	public ArrayList<BoardDTO> selectBoard()
	{
		String sql = "SELECT no, title, name, wtime, rcnt FROM board ORDER BY no DESC";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try(Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);
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