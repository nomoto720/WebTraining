<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="css/main.css">
  <link href="https://fonts.googleapis.com/earlyaccess/nicomoji.css" rel="stylesheet">
  <title>じゃんけんぽん</title>
</head>
<body>
 <form method="post">
 <% if (request.getParameter("hand") == null || request.getParameter("btn") =="" ){ %>
    <input type="radio" name="hand" value="0">ぐー<br>
    <input type="radio" name="hand" value="1">ちょき<br>
    <input type="radio" name="hand" value="2">ぱー<br>
    <button type="submit" name="btn">ショウブ</button>
  </form>
  <% } %>
 <% if (request.getParameter("btn") != null  ){ %>
  <div>
 <% int index=Integer.parseInt(request.getParameter("hand")); %>
 <% String[] str={"gu","choki","pa"}; %>
 <% Random rand=new Random(); %>
 <% int index2=rand.nextInt(3); %>
    <img src="images/<%=str[index] %>.png">
    <img src="images/<%=str[index2] %>.png">
  </div>
 <% int winNum=(index+3-index2)%3;
 		String win;
 		if(winNum==0){
 			win="ひきわけです";
 		}else if(winNum==2){
 			win="アナタのかちです！";
 		}else{
 			win="アナタのまけです";
 		}
 %>
  <p><%=win %></p>
 <% } %>
</body>
</html>