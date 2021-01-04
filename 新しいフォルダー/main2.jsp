<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.DiceLogic2,
    model.Dice2,java.util.Map,java.util.TreeMap" %>
<%
	DiceLogic2 d2=new DiceLogic2();
	Dice2 dice2=(Dice2)application.getAttribute("dice2");
	Map<Integer,Integer> map=(TreeMap)dice2.getMap();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DiceCompGame</title>
</head>
<body>
結果<br>
<% for(int i=1;i<=dice2.getMaxThrowCount();i++){ %>
	<% String str=map.containsKey(i) ? d2.createStar(map.get(i)):""; %>
	<%=i+"("+300*i+"):"+str %><br>
<% } %>
<%="コンプ平均値:"+d2.calcAvg(map)+"円" %>
<%="モード(最頻値):"+d2.calcMode(map)+"回("+d2.calcMode(map)*300+"円)" %>
</body>
</html>