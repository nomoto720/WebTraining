<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Self" %>
<%@ page import="model.SelfLogic" %>
<%@ page import="java.util.LinkedHashMap" %>
<%@ page import="java.util.Map" %>
<%
Self self=(Self)request.getAttribute("self");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Self Introduction</title>
</head>
<body>
<%=self.getProfession() %>のボーナスが適用されました!<br>
[体力:<%=self.getHp() %>魔力:<%=self.getMp() %>パワー:<%=self.getPower() %>きようさ:<%=self.getDex() %>すばやさ:<%=self.getAgi() %>]<br>
<br>
***作成成功!***<br>
私は<%=self.getProfession() %>の<%=self.getRace() %>、<%=self.getName() %>です。<br>
能力値(<%=self.getTotal() %>)を高い順に並べると<br>
<%
SelfLogic selfLogic=new SelfLogic();
Map<String,Integer> map=selfLogic.order(self);
for(Map.Entry<String,Integer> entry : map.entrySet()){ %>
	<%=entry.getKey()+entry.getValue() %><br>
<% } %>
です。今後ともよろしく…。<br>
</body>
</html>