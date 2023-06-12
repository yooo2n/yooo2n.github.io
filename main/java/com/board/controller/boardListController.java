package com.board.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.service.boardService;
import com.board.vo.boardVo;
import com.controller.Controller;
import com.controller.HttpUtil;
import com.join.service.joinService;
import com.member.vo.memberVo;

public class boardListController  implements Controller{

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, SQLException {
	
		
		// TODO Auto-generated method stub
		// 기본
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		//################여기부터 #################
		String writer = (String)session.getAttribute("session_id");
		// ################jsp의 form안의 데이터 값 받아오기
		
		System.out.println(writer);
		
		
		// 위에서 받아온값을 다시 board 데이터에 세팅하기
		boardVo board = new boardVo();
		board.setWriter(writer);

		// Service 객체의 메소드 호출
		// 똑같이 적기
		boardService service = boardService.getInstance();
		
		//다르게 적기
		ArrayList<boardVo> boardListResult = service.boardList(board);

		// 여기는 데이터 형식 확인, boolean -> true,false / int 정수 / String 텍스트
		// 서비스에 있는 함수의 리턴값 받아오기
		
		// 받아온 리턴값으로 jsp로 보내주기
		request.setAttribute("boardListResult",boardListResult);
		HttpUtil.forward(request, response, "/boardList.jsp");
	
		
	}
	 
	}
