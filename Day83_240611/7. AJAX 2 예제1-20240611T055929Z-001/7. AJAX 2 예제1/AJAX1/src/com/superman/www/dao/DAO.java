package com.superman.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.superman.www.dto.MovieScriptDto;

public class DAO {
	private static DAO dao = new DAO();
	private String CONNECTION_POOL_RESOURCE_NAME = "jdbc/testdb";
	private final String TABLE_NAME = "movie";
	private DataSource dataSource;	

	private DAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/" + CONNECTION_POOL_RESOURCE_NAME);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MovieScriptDto> getMovieScript() {
		String sql = "SELECT * FROM " + TABLE_NAME;
		ArrayList<MovieScriptDto> list = new ArrayList<>();
		try(Connection conn = dataSource.getConnection();
				PreparedStatement ps = conn.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
				while(rs.next()) {
					MovieScriptDto dto = new MovieScriptDto();
					dto.setNo(rs.getInt("no"));
					dto.setId(rs.getString("id"));
					dto.setMsg(rs.getString("msg"));
					list.add(dto);

				}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	public static DAO getBoardDAO() {
		return dao;
	}
}

/*
create table movie(
no int AUTO_INCREMENT PRIMARY KEY,
id VARCHAR(50),
msg VARCHAR(100)
);

INSERT INTO MOVIE VALUES(1, "곽철용", "묻고 더블로 가");
INSERT INTO MOVIE VALUES(2, "터미네이터", "I'll be back");
INSERT INTO MOVIE VALUES(3, "박두만", "밥은 먹고 다니냐?");
INSERT INTO MOVIE VALUES(4, "란초", "우릴 모른댄다, 뛰어!");
INSERT INTO MOVIE VALUES(5, "조커", "Why so serrious?");
INSERT INTO MOVIE VALUES(6, "하비 덴트", "영웅으로 살다가 죽거나, 아니면 오래 살아서 악당이 되거나.");
INSERT INTO MOVIE VALUES(7, "척 놀랜드", "윌슨! 윌슨! 팔이 안 닿아! 제발 돌아와! 미안해 윌슨!");
*/