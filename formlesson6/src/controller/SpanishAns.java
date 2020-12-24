package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SpanishAns")
public class SpanishAns extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String yesno=request.getParameter("yesno");
		String str=yesno.equals("0")? "正解！":"不正解";
		response.setContentType("text/html; charset=UTF-8" );
		PrintWriter out=response.getWriter();
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"utf-8\">");
		out.println("<title>スペイン語問題</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<p>"+str+"</p>");
		out.println("</body>");
		out.println("</html>");
	}

}
