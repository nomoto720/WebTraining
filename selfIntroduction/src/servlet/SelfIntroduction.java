package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Self;
import model.SelfLogic;


@WebServlet("/SelfIntroduction")
public class SelfIntroduction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsp/selfIntroduction.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("name");

		Self self=new Self(name);

		SelfLogic selfLogic=new SelfLogic();
		selfLogic.execute(self);

		request.setAttribute("self", self);

		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsp/selfIntroduction2.jsp");
		dispatcher.forward(request, response);
	}

}
