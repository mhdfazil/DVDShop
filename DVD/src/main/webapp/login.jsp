<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet">
<link rel="stylesheet" href="cssLogin.css">
<title>Login</title>

</head>
<body>

	<div class="title" >
		<h2> Welcome </h2> 		
	</div>
	<br>
	
	<div class="row" >
		<div class="col-xl-6 left">
			<img src="images/flm.jpg" alt="Image">
		</div>
		<div class="col-xl-6" style="background-color: currentColor">
			<br>
			<h4 class="sign"> Sign in or <a href="/signup" style="color: goldenrod; font-size: 75%;">create an account.</a></h4>
			<form action="login" method="post" class="right">
			  <div class="form-group">
			  	<p class="spring_exc"> ${SPRING_SECURITY_LAST_EXCEPTION.message} </p>
			    <label for="username">Username</label>
			    <input type="text" name="username" class="form-control" id="username" placeholder="Enter Username" required="required">
			  </div>
			  <div class="form-group">
			    <label for="password">Password</label>
			    <input type="password" name="password" class="form-control" id="password" placeholder="Enter Password" required="required">
			  </div>
			  <br>
			  <button type="submit" class="btn btn-success btn-block">Sign in</button>
			</form>
		</div>
	</div>

</body>
</html>