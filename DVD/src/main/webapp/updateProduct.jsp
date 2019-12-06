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
<title>Update Product</title>
</head>
<body>
<jsp:include page="/adminHeader"></jsp:include>
<br>
<div class="title" >
		<h2>Update Product</h2> 		
	</div>
	<div class="row" >
	
		<div class="col-xl-6 left">
		
		</div>
		
		<div class="col-xl-6 right" style="padding: 70px;">
		
		
			<form action="updateProduct" method="post" >
		     
			  <div class="form-group">
			
			  	<label for="productname">DVD Name</label>
			  	<input type="hidden" name="prod_id" value="${prod.prod_id}">
			    <input type="text" name="name" class="form-control" id="productname" value="${prod.name}"  required="required">
			  
			  </div>
			   
			 <!-- Example single danger button -->
			 <div class="form-group">
			  <label>Category</label><br>
			  <select name="category" >
			  		 <option value="action">Action</option>
				  <option value="action" >Action</option>
				  <option value="comedy">Comedy</option>
				  <option value="science-fiction">Science Fiction</option>
				  <option value="fantasy">Fantasy</option>
				   <option value="Thriller">Thriller</option>
				    <option value="Other">Other</option>
			  </select> 
			      </div>
			      <br>
			  <div class="form-group">
			    <label for="description">Description</label>
			   <textarea class="form-control" rows="2"  name="descr" id="description" >${prod.descr}</textarea>
			  </div>
			  <div class="form-group">
			  	<label for="quantity">Quantity</label>
			    <input type="text" name="qty" class="form-control" id="quantity"  value="${prod.qty}" required="required">
			  </div>
			  <div class="form-group">
			  	<label for="price">Price</label>
			    <input type="text" name="price" class="form-control" id="price"  value="${prod.price}" required="required">
			  </div>
			  <div class="form-group">
			  <label>Poster</label>
				 	<input type="file" name="pic" class="form-control" id="pic"  required="required">
              </div>
			  <div class="form-group">
			  		<button type="submit" class="btn btn-success btn-block" >Update</button>
			  </div>
			  
		
			</form>
			
		</div>	
	</div>


</body>
</body>
</html>