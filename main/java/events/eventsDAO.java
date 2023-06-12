package events;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class eventsDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;

	public eventsDAO() {
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

	public int memo(events events) {
		String SQL = "INSERT INTO events VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, events.getEventname());
			pstmt.setString(2, events.getStart());
			pstmt.setString(3, events.getLocation());
			pstmt.setString(4, events.getDatails());
			pstmt.setString(5, events.getEnd());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1; // 데이터베이스 오류
	}
}
