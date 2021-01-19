<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.*"%>
<%
	List<Donut> list=(List<Donut>)request.getAttribute("list");
	String msg=(String)request.getAttribute("msg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" href="/donutshop/css/admin.css">
</head>
<body>
<div class="container">
<a href="/donutshop/Main" class="btn btn-outline-info btn-sm float-right" >公開ページを見る</a>
<% if(msg != null){ %>
<div class="alert alert-success" role="alert">
<%=msg %>
</div>
<% } %>
<form class="mt-3" action="/donutshop/Admin" method="post" enctype="multipart/form-data">
<div class="form-group">
 <label for="name">商品名</label>
<input type="text" name="name" id="name" class="form-control" placeholder="商品名" required>
</div>
<div class="form-group">
 <label for="price">価格</label>
<input type="number" name="price" id="price"  class="form-control" placeholder="価格" step="10" required><br>
</div>
<div class="form-group">
<label for="imgname">商品画像</label>
<input type="file" name="imgname" id="imgname" class="form-control" >
</div>
<button type="submit" class="btn btn-primary">登録</button>
</form>
<% if(list != null && list.size()>0){ %>
<table  class="table table-bordered mt-5" >
<%for(Donut d:list){ %>
<tr>
<td><img src="upload/<%=d.getImgname() %>"></td>
<td><%=d.getId() %></td>
<td><%=d.getName() %></td>
<td><%=d.getPrice() %></td>
<td><a href="/donutshop/AdminUpdate?id=<%=d.getId() %> " >更新</a></td>
<td><a href="/donutshop/Delete?id=<%=d.getId() %>" onclick="return confirm('[<%=d.getName()%>]を削除してよろしいですか？');">削除</a></td>
</tr>
<% } %>
</table>
<% } %>
</div>
</body>

</html>