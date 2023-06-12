package com.board.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.service.boardService;
import com.board.vo.boardVo;
import com.controller.Controller;
import com.controller.HttpUtil;

public class boardDetailController implements Controller {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
		
		

		// 똑같이 적기
		HttpSession session = request.getSession();
		// 똑같이 적기
		request.setCharacterEncoding("UTF-8");
		String boardNum = request.getParameter("boardNum"); 
		
		String writer = (String)session.getAttribute("session_id");
		
		// 위에서 받아온값을 다시 board 데이터에 세팅하기
		boardVo board = new boardVo();
		board.setWriter(writer);
		board.setNum(boardNum);
		
		
		// Service 객체의 메소드 호출
		// 똑같이 적기
		boardService service = boardService.getInstance();
		
		boardVo boardDetailResult = service.boardDetailList(board);
		

		// 여기는 데이터 형식 확인, boolean -> true,false / int 정수 / String 텍스트
		// 서비스에 있는 함수의 리턴값 받아오기
				
		request.setAttribute("boardDetailResult",boardDetailResult);
		HttpUtil.forward(request, response, "/boardDetail.jsp");
			
		
		
		
		
		
	
	}
}