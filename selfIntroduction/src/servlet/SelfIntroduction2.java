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

@WebServlet("/SelfIntroduction2")
public class SelfIntroduction2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int index=Integer.parseInt(request.getParameter("race"));
		String race="";
switch(index) {
		case 0:
			race="人間";
			break;
		case 1:
			race="ハイエルフ";
			break;
		case 2:
			race="トロル";
			break;
		case 3:
			race="ノーム";
			break;
		}
		String name=request.getParameter("name");
		int hp=Integer.parseInt(request.getParameter("hp"));
		int mp=Integer.parseInt(request.getParameter("mp"));
		int dex=Integer.parseInt(request.getParameter("dex"));
		int agi=Integer.parseInt(request.getParameter("agi"));
		int power=Integer.parseInt(request.getParameter("power"));

		Self self=new Self(name,race, hp, mp, dex, agi, power);

		SelfLogic selfLogic=new SelfLogic();
		selfLogic.execute2(self);

		request.setAttribute("self", self);

		RequestDispatcher dispatcher=request.getRequestDispatcher("/WEB-INF/jsp/selfIntroduction3.jsp");
		dispatcher.forward(request, response);
	}

}
