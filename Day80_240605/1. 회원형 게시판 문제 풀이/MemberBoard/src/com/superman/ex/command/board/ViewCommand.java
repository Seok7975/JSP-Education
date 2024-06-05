package com.superman.ex.command.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.superman.ex.command.Command;
import com.superman.ex.dao.BoardDAO;
import com.superman.ex.dto.BoardDTO;
import com.superman.ex.dto.MemberDTO;

public class ViewCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getBoardDAO();
		BoardDTO dto = new BoardDTO();
		dto.setNo(Integer.parseInt(request.getParameter("no")));
		dto.setId(request.getParameter("id"));
		dao.viewDAO(dto);
		request.setAttribute("dto", dto);
	}
}