<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>九九表</p>
<table border="1">
<% for(int i=0;i<9;i++){ %>
<tr>
	<% for(int j=0;j<9;j++){ %>
		<th>
		<%= (i+1)*(j+1) %>
		</th>
	<% } %>
		</tr>
<% } %>
</table>
</body>
</html>