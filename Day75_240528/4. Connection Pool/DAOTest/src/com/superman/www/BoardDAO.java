package com.superman.www;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDAO {
//	private String driver = "com.mysql.cj.jdbc.Driver";
//	private String url = "jdbc:mysql://localhost:3306/testdb?serverTimezone=UTC";
//	private String user = "root";
//	private String password = "1234";
	private DataSource dataSource;

	public BoardDAO() {
//		try {
//			Class.forName(driver);
//		} catch(ClassNotFoundException e) {
//			System.out.println("드라이버 로드 실패");
//		}
		try {
			Context context = new InitialContext();
			/*
			 * 커넥션 풀에 접근하려면 JNDI 서비스를 사용해야 합니다. JNDI는 서버에서 관리하고 있는 리소스에 대한 정보를 
			 * 알고 있고 특정 리소스를 찾아서 사용할 수있도록 객체를 반환해주는 역활을 합니다. JNDI 서버역활을 하는 객체를 
			 * 생성합니다. 리소스가 로컬에 있을 때는 단순히 InitialContext 객체만 생성하면 됩니다.
			 */
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/testdb");
			/*
			 context.lookup( )은 리소스를 찾은 후 리소스를 사용할 수 있도록 객체를 반환해주는 메소드 입니다. 
			 lookup( ) 메소드의 인자값으로는 찾으려는 리소스의 등록된 이름을 지정합니다. 우리가 찾으려는 리소스의 이름은
			 "jdbc/testdb" 이고 WAS인 톰캣에서 리소스를 관리하는 가상의 디렉터리는 "java:comp/env"입니다. 
			 그래서 lookup( ) 메소드의 최종인자 값은 "java:comp/env/jdbc/testdb"이 됩니다.
			lookup( ) 메소드가 반환하는 객체의 타입은 Object 이기 때문에 원래 리소스 타입으로 변환해줍니다. 
			앞에서 context.xml 파일에 커넥션 풀을 설정할 때 리소스의 타입을 DataSource로 등록했습니다. 
			즉, 원래 DataSource로 타입을 변환합니다.
			 */
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	public ArrayList<BoardDTO> selectBoard()
	{
		String sql = "SELECT no, title, name, wtime, rcnt FROM board ORDER BY no DESC";
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
		try (Connection conn = dataSource.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()){
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

/*
JNDI
JNDI(Java Naming and Directory Interface)는 디렉터리 서비스에서 제공하는 데이터 및 객체를 발견하고 참고하기 위한 자바 API다.
Naming & Directory 서비스
Naming & Directory 서비스는 실제 어떤 자원을 가지고 서비스 한다는 의미가 아니라, 어떤 서버나 애플리케이션에서 분산환경에 서비스하고자 
하는 자원을 이 Naming & Directory 서버에 이름값과 실제 자원을 연결하여 등록하면, 해당 자원을 이용하고자 하는 다른 애플리케이션에서
 Naming & Directory 서버에 접근하여 이름값만을 가지고 자원을 연결하여 이용할 수 있게 하는 개념입니다.
네이밍 서비스의 대표적인 예로 DNS서버가 이런 기능을 한다. 브라우저창에 URL을 입력하면 브라우저는 DNS서버를 통해 도메인에 해당하는 IP주소를 
얻습니다. 그리고 IP 주소를 통해 실제 인터넷 서버에 접속합니다. 결국 DNS 서버는 실제 인터넷 서비스를 수행해주는 곳이 아니며, 단지 도메인과 IP 
주소만을 연결해주는 기능을 하는 것입니다. 
Naming & Directory 서버 또한 분산환경에서 자원을 연결해주는 기능을 합니다.

DataSource는 서버에서 관리하는 리소스인 커넥션 풀을 사용할 수 있게 하는 객체로서, 서버가 시작할 때 커넥션 풀이 서버에 준비되어 있어야 합니다. 
그래야 DB 프로그래밍을 할 때 커넥션 풀에서 Connection 객체를 얻어낼 수 있습니다. 
*/