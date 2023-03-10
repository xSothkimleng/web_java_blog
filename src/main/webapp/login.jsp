<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Blog - login</title>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<link rel="stylesheet" href="custom-styles.css">
	</head>
<body>

<div class="authFormWrapper">
	<div class="authForm">
		<div>
			<p class="logo-title"><a href="index.jsp">Blogginator</a></p>
			<% if(session.getAttribute("loginStatus")=="failed"){ %>
				<p style="text-align:center;">Username or password in invalid</p>
		  	<%} %>
 		</div>
		<form method="post" action="loginServlet">
		  	<div class="mb-3">
		    	<label for="username" class="form-label">Username</label>
		    	<input type="text" class="form-control" id="username" name="username">
		  	</div>
		  	<div class="mb-3">
		    	<label for="password" class="form-label">Password</label>
		    	<input type="password" class="form-control" id="password" name="password">
		  	</div>
		  	<div>
			  	<button type="submit" class="btn btn-success">Login</button>		  
		  		<span style="margin-left:1rem;">or</span>
			  	<a href="/web_java_blog/signup.jsp" class="btn">sign up</a>
		  	</div>
		</form>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>