<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>like food</title>
</head>
<body>
<form action="formlesson8/FormFood" method="get" >
<select name="likefood">
<option value="0" >好きな食べ物を一つ選んでください</option>
<option value="1" >寿司</option>
<option value="2" >ラーメン</option>
<option value="3" >焼肉</option>
</select>
<input type="submit" value="送信" name="btn" >
</form>
<% request.setCharacterEncoding("UFT-8");
	String likeFood=request.getParameter("msg");
%>
<p><%=likeFood %></p>
</body>
</html>