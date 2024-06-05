package com.superman.ex.command.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.superman.ex.command.Command;
import com.superman.ex.dao.BoardDAO;
import com.superman.ex.dto.BoardDTO;

public class SearchCommand implements Command {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getBoardDAO();
		String kindOfSearch = request.getParameter("kindOfSearch");
		String searchKeyword = request.getParameter("searchKeyword");
		ArrayList<BoardDTO> list = dao.search(kindOfSearch, searchKeyword);
		request.setAttribute("list", list);
	}
}