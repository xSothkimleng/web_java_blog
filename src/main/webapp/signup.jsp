<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Blog - Signup</title>
		<meta charset="ISO-8859-1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
		<link rel="stylesheet" href="styles.css">
	</head>
<body>

<sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/web_java_blog"
	user="root"
	password="admin" 
/>

<div class="authFormWrapper">
	<div class="authForm">
		<div>
			<p class="logo-title">Blogginator</p>
			<p style="text-align:center;">Create new Account</p>
		</div>
		<form >
		  	<div class="mb-3">
		    	<label for="Username" class="form-label">Username</label>
		    	<input type="text" class="form-control" id="Username">
		  	</div>
		  	<div class="mb-3">
		    	<label for="exampleInputPassword1" class="form-label">Password</label>
		    	<input type="password" class="form-control" id="exampleInputPassword1">
		  	</div>
		  	<div>		  
				<button type="submit" class="btn btn-success">sign Up</button>
		  		<span style="margin-left:1rem;">or</span>
		  		<a href="/web_java_blog/login.jsp">
		  			<div class="btn">login</div>
		  		</a>
		  </div>
		</form>
	</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>