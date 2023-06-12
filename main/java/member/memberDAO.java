package member;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class memberDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public memberDAO() {
		try {
			String dbURL = "jdbc:mariadb://localhost:3306/apple_tree";
			String dbID = "root";
			String dbPassword = "green1234";
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int login(String member_id, String member_pw) {
		String SQL = "SELECT member_pw FROM member WHERE member_id =?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member_id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(member_pw)) {
					return 1; // 로그인 성공
				}
				else
					return 0; // 비밀번호 불일치 
			}
			return -1;	// 아이디가 없음
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; // 데이터베이스 오류
	}
	public int join(member member) {
		String SQL = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, member.getMember_name());
			pstmt.setString(2, member.getMember_id());
			pstmt.setString(3, member.getMember_pw());
			pstmt.setString(4, member.getMember_email());
			pstmt.setString(5, member.getMember_address());
			pstmt.setString(6, member.getMember_tell());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}
