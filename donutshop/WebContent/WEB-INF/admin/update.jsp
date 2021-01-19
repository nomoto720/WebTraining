<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.*"%>
<%
	Donut donut=(Donut)request.getAttribute("donut");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="donutshop/css/admin.css">
</head>
<body>
<div class="container">
<form action="/donutshop/AdminUpdate" method="post" enctype="multipart/form-data">
<div class="form-group">
 <label for="name">商品名</label>
<input type="text" name="name" value="<%=donut.getName() %>" class="form-control" required>
</div>
<div class="form-group">
 <label for="price">価格</label>
<input type="number" name="price" step="10" value="<%=donut.getPrice()%>" class="form-control" required>
</div>
<img src="/donutshop/upload/<%=donut.getImgname()%>" id="preview" class="sampleImg"><br>
<div class="form-group">
 <label for="imgname">商品画像</label>
<input type="file" name="imgname" id="imgname" class="form-control">
</div>
<input type="hidden" name="id" value="<%=donut.getId() %>">
<input type="hidden" name="orgname" value="<%=donut.getImgname() %>">
<button type="submit" class="btn btn-primary">更新</button>
</form>
</div>
</body>
</html>