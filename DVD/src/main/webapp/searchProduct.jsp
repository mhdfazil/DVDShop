<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>Search</title>
</head>
<body>
<jsp:include page="/adminHeader"></jsp:include>
<br>
</div>
	<div class="row" >
	
		<div class="col-xl-6 left">
		
		</div>
		
		<div class="col-xl-6 right" style="padding: 70px;">
            <form action="searchProduct" method="get" >
				  <div class="form-group">
				  	<label for="productID">DVD ID</label>
				    <input type="text" name="id" class="form-control" id="productId" placeholder="Enter product id" required="required">
				  <div class="form-group">
				  		<button type="submit" class="btn btn-success btn-block" >Search</button>
				  </div>
				  </div>

</body>
</html>