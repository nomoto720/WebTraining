<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PC OS</title>
</head>
<body>
<form action="/formlesson7/FromOS" method="post" >
お使いのOSを選んでください<br>
<input type="checkbox" name="os" value="win" >Win
<input type="checkbox" name="os" value="mac" >Mac
<input type="checkbox" name="os" value="linux" >Linux
<input type="submit" value="送信">
</form>

</body>
</html>