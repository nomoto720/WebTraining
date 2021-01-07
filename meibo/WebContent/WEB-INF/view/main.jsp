<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*"%>
<%
	List<Person> list=(List<Person>)application.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>名簿</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<div class="container">
<table class="table table-striped table-bordered table-hover  table-dark">
<% for(Person p:list){ %>
<tr>
<td><%=p.getName() %></td>
<td><%=p.getFurigana() %></td>
<td><%=p.getGender() %></td>
<td><%=p.getBt() %></td>
</tr>
<%} %>
</table>
</div>
</body>
</html>