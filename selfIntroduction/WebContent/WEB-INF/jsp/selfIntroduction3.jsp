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
<% String str=(String)self.getRace(); %>
<%=str %>のボーナスが適用されました!<br>
[体力:<%=self.getHp() %>魔力:<%=self.getMp() %>パワー:<%=self.getPower() %>きようさ:<%=self.getDex() %>すばやさ:<%=self.getAgi() %>]<br>
<br>
<form action="/selfIntroduction/SelfIntroduction3" method="post">
職業を選んでください<br>
<input type="radio" name="profession" value="0">戦士
<input type="radio" name="profession" value="1">盗賊
<input type="radio" name="profession" value="2">僧侶
<input type="radio" name="profession" value="3">魔術師<br>
<input type="hidden" name="hp" value="<%=self.getHp() %>">
<input type="hidden" name="mp" value="<%=self.getMp() %>">
<input type="hidden" name="power" value="<%=self.getPower() %>">
<input type="hidden" name="dex" value="<%=self.getDex() %>">
<input type="hidden" name="agi" value="<%=self.getAgi() %>">
<input type="hidden" name="name" value="<%=self.getName() %>">
<input type="hidden" name="race" value="<%=self.getRace() %>">
<input type="submit" value="決定">
</form>
</body>
</html>