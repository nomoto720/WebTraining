package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormFood")
public class FormFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int foodnum=Integer.parseInt(request.getParameter("likefood"));
		response.setContentType("text/html; charset=utf-8");
		String msg="選択なし";
		
		switch(foodnum) {
		case 1:
			msg="やっぱ寿司ですよね！";
			break;
		case 2:
			msg="バリエーション豊富だし、ラーメン最高！";
			break;
		case 3:
			msg="やっぱ肉ですよね！";
			break;
		default:
			msg="選択なし";
			break;
		}
		
		
	}

}
