<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*"%>
<%
List<Profile> list=(List<Profile>)request.getAttribute("list");
User loginUser=(User)session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>workshop studio</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/workshopAdomin/css/admin.css">
</head>
<body>
<h1>workshop studio</h1>
<p>
<%=loginUser.getName() %>さん、ログイン中
<a href="/workshopAdomin/Logout">ログアウト</a>
</p>
<p><a href="/workshopAdomin/Adomin">更新</a>

<div class="container">

<% if(list != null && list.size()>0){ %>
<table  class="table table-bordered mt-5" >
<%for(Profile p:list){ %>
<tr>
<td><img src="/workshopHP/upload/<%=p.getImgname() %>"></td>
<td><%=p.getId() %></td>
<td><%=p.getName() %></td>
<td><%=p.getFurigana() %></td>
<td><%=p.getEmailAdd() %></td>
<td><%=p.getSelfPR() %></td>
</tr>
<% } %>
</table>
<% } %>
</div>

</body>
</html>