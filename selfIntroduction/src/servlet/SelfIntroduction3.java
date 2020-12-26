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

@WebServlet("/SelfIntroduction3")
public class SelfIntroduction3 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int index=Integer.parseInt(request.getParameter("profession"));
		String profession="";
		switch(index) {
		case 0:
			profession="戦士";
			break;
		case 1:
			profession="盗賊";
			break;
		case 2:
			profession="僧侶";
			break;
		case 3:
			profession="魔術師";
			break;
		}
		String name=request.getParameter("name");
		String race=request.getParameter("race");
		int hp=Integer.parseInt(request.getParameter("hp"));
		int mp=Integer.parseInt(request.getParameter("mp"));
		int dex=Integer.parseInt(request.getParameter("dex"));
		int agi=Integer.parseInt(request.getParameter("agi"));
		int power=Integer.parseInt(request.getParameter("power"));

		Self self=new Self(name,race,profession,hp, mp, dex, agi, power);

		SelfLogic selfLogic=new SelfLogic();
		selfLogic.execute3(self);

		request.setAttribute("self", self);

		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsp/selfIntroduction4.jsp");
		dispatcher.forward(request, response);
	}

}
