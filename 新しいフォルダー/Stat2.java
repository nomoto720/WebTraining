package controller;

import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Dice2;
import model.DiceLogic2;


@WebServlet("/Stat")
public class Stat2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<Integer,Integer> map=new TreeMap<>();
		Dice2 dice2=new Dice2();
		ServletContext application=this.getServletContext();
		application.setAttribute("dice2",dice2);
		dice2.setMaxThrowCount(0);
		DiceLogic2 d2=new DiceLogic2();
		for(int i=0;i<500;i++){
			int diceThrowCount=d2.diceCompCount();
			if(diceThrowCount>dice2.getMaxThrowCount()){
				dice2.setMaxThrowCount(diceThrowCount);
			}
			int count;
			if(map.containsKey(diceThrowCount)){
				count=map.get(diceThrowCount)+1;
			}else{
				count=1;
			}
			map.put(diceThrowCount,count);
		}
		dice2.setMap(map);
		application.setAttribute("dice2",dice2);
		RequestDispatcher rd=request.getRequestDispatcher("/WEB-INF/view/main2.jsp");
		rd.forward(request, response);
	}
}
