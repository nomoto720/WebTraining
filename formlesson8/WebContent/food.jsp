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
<option value="none" >好きな食べ物を一つ選んでください</option>
<option value="sushi" >寿司</option>
<option value="ramen" >ラーメン</option>
<option value="yakiniku" >焼肉</option>
</select>
<input type="submit" value="送信" name="btn" >
</form>
</body>
</html>