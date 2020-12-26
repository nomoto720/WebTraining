<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Self" %>
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
初期ステータスが決定しました<br>
[体力:<%=self.getHp() %>魔力:<%=self.getMp() %>パワー:<%=self.getPower() %>きようさ:<%=self.getDex() %>すばやさ:<%=self.getAgi() %>]<br>
<br>
<form action="/selfIntroduction/SelfIntroduction2" method="post">
種族を選んでください<br>
<input type="radio" name="race" value="0">人間
<input type="radio" name="race" value="1">ハイエルフ
<input type="radio" name="race" value="2">トロル
<input type="radio" name="race" value="3">ノーム<br>
<input type="hidden" name="hp" value="<%=self.getHp() %>">
<input type="hidden" name="mp" value="<%=self.getMp() %>">
<input type="hidden" name="power" value="<%=self.getPower() %>">
<input type="hidden" name="dex" value="<%=self.getDex() %>">
<input type="hidden" name="agi" value="<%=self.getAgi() %>">
<input type="hidden" name="name" value="<%=self.getName() %>">
<input type="submit" value="決定">
</form>
</body>
</html>