package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
    
    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;
    
    public UserDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/BBS?useUnicode=true&characterEncoding=UTF-8";
            String dbID = "root";
            String dbPassword = "1234";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
    // 로그인
    public int login(String userID, String userPassword) {
        String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,  userID);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                if(rs.getString(1).equals(userPassword)) {
                    return 1; // 비밀번호 일치, 로그인 성공
                } else
                    return 0; // 비밀번호 불일치
            }
            return -1; // 아이디가 없음
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -2; // 데이터베이스 오류
    }
    
    // 회원가입
    public int join(User user) {
        String SQL = "INSERT INTO USER VALUES(?, ?, ?, ?, ?)";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, user.getUserID());
            pstmt.setString(2, user.getUserPassword());
            pstmt.setString(3, user.getUserName());
            pstmt.setString(4, user.getUserGender());
            pstmt.setString(5, user.getUserEmail());
            return pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // 데이터베이스 오류
    }
    
    // 아이디 찾기
    public String findUserId(String userName, String userEmail) {
        String SQL = "SELECT userID FROM USER WHERE userName = ? AND userEmail = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userName);
            pstmt.setString(2, userEmail);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getString("userID");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // 일치하는 아이디 없음
    }
    
    // 비밀번호 찾기
    public String findUserPassword(String userID, String userEmail) {
        String SQL = "SELECT userPassword FROM USER WHERE userID = ? AND userEmail = ?";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, userID);
            pstmt.setString(2, userEmail);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getString("userPassword");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null; // 일치하는 비밀번호 없음
    }
    
    // 디버깅용 메서드
    public void printDebugInfo(String userName, String userEmail) {
        String SQL = "SELECT * FROM USER";
        try {
            pstmt = conn.prepareStatement(SQL);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                System.out.println("UserID: " + rs.getString("userID") + ", UserName: " + rs.getString("userName") + ", UserEmail: " + rs.getString("userEmail"));
            }
            System.out.println("입력된 이름: " + userName + ", 입력된 이메일: " + userEmail);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
