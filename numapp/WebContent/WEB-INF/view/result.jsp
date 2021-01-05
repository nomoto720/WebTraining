<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Nums" %>
<%
Nums nums=(Nums)request.getAttribute("nums");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
元の文字列:
<% int[] data=nums.getData(); %>
<% for(int i=0;i<data.length;i++){ %>
	<%=data[i] %>,
<% } %><br>
要素数:<%=nums.getElement() %><br>
最大値:<%=nums.getMax() %><br>
最小値:<%=nums.getMin() %><br>
合計:<%=nums.getTotal() %><br>
<a href="/numapp/Main">戻る</a>
</body>
</html>