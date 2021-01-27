<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>workshop studio</title>
</head>
<body>
<h1>workshop studio 管理者ログイン画面</h1>
<form action="/workshopAdomin/Login" method="post">
ユーザー名:<input type="text" name="name"><br>
パスワード:<input type="password" name="pass"><br>
<input type="submit" value="ログイン" >
</form>
</body>
</html>