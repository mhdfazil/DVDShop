<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet">
<title>Sign Up</title>
</head>
<body>
	<div class="row">
		<div class="col-xl-3">
		</div>
		<div class="col-xl-6">
		
			<form action="/saveUser" method="post">
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" name="name" class="form-control" id="name" placeholder="Ravindhu Perera" required="required">
				</div>
				<div class="form-group">
					<label for="add1">Address line 1</label>
					<input type="text" name="add1" class="form-control" id="add1" placeholder="1234 Main St" required="required">
				</div>
				<div class="form-group">
					<label for="add2">Address line 2</label>
					<input type="text" name="add2" class="form-control" id="add2" placeholder="Apartment, studio, or floor">
				</div>
				<div class="form-group">
					<label for="city">City</label>
					<input type="text" name="city" class="form-control" id="city" placeholder="Colombo" required="required">
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="tel">Mobile No</label>
						<input type="number" name="tel" class="form-control" id="tel" placeholder="0112345678" required="required">
					</div>
					<div class="form-group col-md-6">
						<label for="email">Email</label>
						<input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" required="required">
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="username">Username</label>
						<div class="input-group mb-2 mr-sm-2">
							<div class="input-group-prepend">
					          <div class="input-group-text">@</div>
					        </div>
							<input type="text" name="username" class="form-control" id="username" placeholder="username" required="required">
						</div>
					</div>
					<div class="form-group col-md-6">
						<label for="password">Password</label>
						<input type="text" name="password" class="form-control" id="password" placeholder="Enter password" required="required">
						<small id="passwordHelpBlock" class="form-text text-muted">
						  Your password must be 8-20 characters long.						  
						</small>
					</div>
				</div>
				<button type="submit" class="btn btn-success btn-block">Sign Up</button>
			
			</form>
			
		</div>
		<div class="col-xl-3">
		</div>
	</div>
	
</body>
</html>