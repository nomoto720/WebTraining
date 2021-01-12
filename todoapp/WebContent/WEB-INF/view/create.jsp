<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TodoApp</title>
</head>
<body>
<form action="/todoapp/Create" method="post">
Title:<input type="text" name="title"><br>
重要度:<select name="importance">
<% for (int i=1;i<=5;i++){ %>
	<option value="<%=i %>" <%=i==3? " selected":"" %>><%=i %></option>
<%} %>
</select><br>
<button type="submit">登録</button>
</form>
</body>
</html>