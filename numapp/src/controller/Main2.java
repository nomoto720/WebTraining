package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Num;
import model.NumLogic2;


@WebServlet("/Main2")
public class Main2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/view/form.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String org=request.getParameter("org");
		Num num=new Num();
		num.setOrg(org);
		NumLogic2 nl=new NumLogic2();
		nl.execute(num);
		request.setAttribute("num", num);
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/view/result2.jsp");
		rd.forward(request, response);
	}
}