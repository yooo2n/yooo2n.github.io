package com.board.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.board.dao.boardDao;
import com.board.vo.boardVo;

public class boardService {

	private static boardService service = new boardService();

	private boardService() {
	}

	public static boardService getInstance() {
		return service;
	}

	public boardDao dao = boardDao.getInstance();

	/* 게시판 글쓰기 */
	public boolean boardWrite(boardVo board) throws SQLException {
		// TODO Auto-generated method stub
		//return dao.boardWrite(board);
		return boardDao.boardWrite(board);
	}
	
	/* 게시판 목록 */
	public ArrayList<boardVo> boardList(boardVo board) {
		return boardDao.boardList(board);
	}
	
	/* 게시판 상세보기 */
	public boardVo boardDetailList(boardVo board) {
		
		return boardDao.boardDetailList(board);
	}
	
	/* 게시판 수정 */
	
	/* 게시판 삭제 */
	

}
