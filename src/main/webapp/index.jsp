<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="web.com.*" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Blog</title>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<link rel="stylesheet" href="custom-styles.css">
	</head>
<body>

<%
	BlogController blogController = new BlogController();
	List<Blog_post> blogs = blogController.getAllBook();
	blogs = blogController.getAllBook();
%>

<div class="navbar">
	<div class="container-custom">
		<div class="navbar-content">
			<div>	
				<p class="logo-title" style="block-size:fit-content;font-size:2rem;margin:0;"> 
					<a href="index.jsp">Blogginator</a>
				</p>			
			</div>
			<% if(session.getAttribute("username")==null){%>
			<div>
				<a href="login.jsp">
					<button class="btn btn-success">Login</button>
				</a>
				<span>or</span>
				<a href="signup.jsp">
					<button class="btn btn-success">Register</button>
				</a>
			</div>
			<%} else {%>
			<div>
				<div class="btn btn-success"><a href="create_blog.jsp">Create Blog</a></div>
				<div class="btn btn-success">View my Blog</div>
				<div class="btn btn-danger"><a href="logoutServlet">Logout</a></div>
				<div class="btn"><%=session.getAttribute("username") %></div>
			</div>
			<%} %>
		</div>
	</div>
</div>

<div style="margin-top:5rem;">
	<% for(int i=0;i<blogs.size();i++){
	if(blogs.get(i).isIs_public() == true){ %>
		<div class="post-container mb-3" style="margin-top:0;">
			<div class="post-thumbnail">
				<div class="post-title"><%= blogs.get(i).getTitle() %></div>
				<div class="post-author mb-1">Author: <%= blogs.get(i).getAuthor_name() %></div>
				<div class="post-description"><%= blogs.get(i).getDescription() %></div>
			</div>
		</div>
	<%}}%>	
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>