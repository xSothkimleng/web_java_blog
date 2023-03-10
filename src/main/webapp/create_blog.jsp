<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Blog</title>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<link rel="stylesheet" href="custom-styles.css">
	</head>
<body>

<div class="navbar">
	<div class="container-custom">
		<div class="navbar-content">
			<div>	
				<p class="logo-title" style="block-size:fit-content;font-size:2rem;margin:0;"> 
					<a href="index.jsp">Blogginator</a>
				</p>	
			</div>
			<div>
				<button type="submit" class="btn btn-success">Create Blog</button>
				<button type="submit" class="btn btn-success"><a href="myBlog.jsp">View my Blog</a></button>
			</div>
		</div>
	</div>
</div>

<div class="post-container">
	<form method="post" action="createServlet">
		<input value="<%=session.getAttribute("id")%>" name="author_id" hidden="true"/>
		<input value="<%=session.getAttribute("username")%>" name="author_name" hidden="true"/>
		<div class="mb-3">
	    	<label for="blog_title" class="form-label">Title</label>
	    	<input type="text" class="form-control" id="blog_title" name="title">
	  	</div>
	  	<div class="mb-3">
	  		<div class="form-floating">
	      		<textarea class="form-control" placeholder="Write Your Story Here" id="floatingTextarea" style="height:50vh" name="description"></textarea>
	      	  	<label for="floatingTextarea">Description</label>
	  	  	</div>
	  </div>
	  <div class="mb-3">	  
		  <span>Visibility</span>
		  <div class="form-check">
		      <input class="form-check-input" type="radio" name="visibility" id="flexRadioDefault1" value="true" checked>
		      <label class="form-check-label" for="flexRadioDefault1">
		        public
		      </label>
		  </div>
	      <div class="form-check">
		      <input class="form-check-input" type="radio" name="visibility" id="flexRadioDefault2" value="false">
		      <label class="form-check-label" for="flexRadioDefault2">
		        private
		      </label>
	      </div>
	  </div>
	  <div class="mb-3">		  
	  	<button type="submit" class="btn btn-success">Create Post</button>
	  </div>
	</form>
</div>

</body>
</html>