package com.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.board.vo.boardVo;
import com.dao.DBcon;
import com.mysql.cj.x.protobuf.MysqlxConnection.Close;


public class boardDao {
	// 싱글톤 객체 생성 ==> Singleton
	private static boardDao dao = new boardDao();

	private boardDao() {
	}

	public static boardDao getInstance() {
		return dao;
	}

	public Connection connect() {
		Connection con = null;
		try {
			InitialContext ic = new InitialContext();
			DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/board");
			con = ds.getConnection();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	// select 동작 실행 후...
	public void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (Exception ex) {
				System.out.println("오류 발생 : " + ex);
			}
		}
		close(conn, ps);
	}

	// insert, update, delete 동작 실행 후..
	public void close(Connection conn, PreparedStatement ps) {
		if (ps != null) {
			try {
				ps.close();
			} catch (Exception ex) {
				System.out.println("오류 발생 : " + ex);
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception ex) {
				System.out.println("오류 발생 : " + ex);
			}
		}
	}

	// 게시판 목록
	public static ArrayList<boardVo> boardList(boardVo board) {

		Connection con = DBcon.getConnection();
		System.out.print("여기" + con);

		PreparedStatement ps;
		ResultSet rs;
		// ========여기까지 =====

		ArrayList<boardVo> boardList = new ArrayList<boardVo>();

		try {

			String sql = "select * from board where writer = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getWriter());
			rs = ps.executeQuery();

			System.out.print("여기" + rs);

			// 트루면 if문을 실행하고 리턴
			// 펄스면 if문 실행 안하고 리턴

			// ResultSet에 담긴 결과를 ArrayList에 담기
			while (rs.next()) {
				boardVo boardResult = new boardVo();
				boardResult.setNum(rs.getString("num"));
				boardResult.setTitle(rs.getString("title"));
				boardResult.setWriter(rs.getString("writer"));
				boardResult.setContent(rs.getString("content"));
				boardResult.setReg_date(rs.getString("reg_date"));

				boardList.add(boardResult);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
	

		return boardList;

	}

	// 게시판 글쓰기
	public static boolean boardWrite(boardVo board) {
		Connection con = DBcon.getConnection();
		System.out.print("여기" + con);

		PreparedStatement ps;
		int rs;
		boolean result = false;
		// ========여기까지 =====

		try {

			String sql = "insert into board (title, writer, content) values (?, ?, ?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getWriter());
			ps.setString(3, board.getContent());
			rs = ps.executeUpdate();


			// 트루면 if문을 실행하고 리턴
			// 펄스면 if문 실행 안하고 리턴

			// ResultSet에 담긴 결과를 ArrayList에 담기
		if(rs==1) {
			result = true;
		}else {
			return result;
		}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
	

		return result;
	}

	// 게시판 목록
	public static boardVo boardDetailList(boardVo board) {
		Connection con = DBcon.getConnection();

		PreparedStatement ps;
		ResultSet rs;
		// ========여기까지 =====

		boardVo boardList = new boardVo();

		try {

			String sql = "select * from board where writer = ? and num = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, board.getWriter());
			ps.setString(2, board.getNum());
			rs = ps.executeQuery();

			System.out.print("여기" + rs);

			// 트루면 if문을 실행하고 리턴
			// 펄스면 if문 실행 안하고 리턴

			if(rs.next()) {
				
				boardList.setNum(rs.getString("num"));
				boardList.setTitle(rs.getString("title"));
				boardList.setWriter(rs.getString("writer"));
				boardList.setContent(rs.getString("content"));
				boardList.setReg_date(rs.getString("reg_date"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
	

		return boardList;
	}
	
	//게시판 수정
	public int update(String num, String title, String content) {
		
		Connection con = DBcon.getConnection();

		PreparedStatement ps;
		int rs;
		boolean result = false;
		
		try {
			String sql = "update board set title = ?, content = ? WHERE num = ?";
			
			ps = con.prepareStatement(sql);
			
			boardVo board = null;
			ps.setString(1, board.getTitle());
			ps.setString(3, board.getContent());
			
			rs = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	}

	/* 게시판 삭제
	public int delete(int bbsID) {
		String SQL = "UPDATE BBS SET bbsAvailable = 0 WHERE bbsID = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, bbsID);
			return pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //DB 오류 
	} */
	
}
