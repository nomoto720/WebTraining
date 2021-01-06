<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.InchCmNum" %>
<%
	InchCmNum num=(InchCmNum)request.getAttribute("num");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inchCm</title>
</head>
<body>
<%=num.getInch() %>inchは<%=num.getCm() %>cmです。<br>
<a href="/inchCm/Main">戻る</a>
</body>
</html>