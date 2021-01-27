package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Profile;
@WebServlet("/FormMain")
public class FormMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/view/form.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");
		String furigana=request.getParameter("furigana");
		String emailAdd=request.getParameter("emailAdd");
		String selfPR=request.getParameter("selfPR");
		Profile profile=new Profile(name,furigana,emailAdd,selfPR);
		HttpSession session=request.getSession();
		session.setAttribute("profile",profile);
		RequestDispatcher rd=request.getRequestDispatcher("WEB-INF/view/result.jsp");
		rd.forward(request, response);
	}

}
