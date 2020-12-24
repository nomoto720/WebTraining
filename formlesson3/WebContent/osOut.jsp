<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<%@  page import="javax.servlet.ServletException" %>
<%@  page import="javax.servlet.annotation.WebServlet" %>
<%@  page import="javax.servlet.http.HttpServletRequest" %>
<%@  page import="javax.servlet.http.HttpServletRequest" %>
<%@  page import="javax.servlet.http.HttpServletResponse" %>

<% @WebServlet("/osOut") %>
<% public class FormSampleServlet extends HttpServlet { %>
<%	private static final long serialVersionUID = 1L; %>

<% protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { %>
<%		this.doPost(request, response); %>
<%	} %>

<%	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { %>
<%		request.setCharacterEncoding("UTF-8"); %>
<%		String[] oss=request.getParameterValues("os"); %>
<%	} %>
<% } %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><%=Arrays.toString(oss) %></p>
</body>
</html>