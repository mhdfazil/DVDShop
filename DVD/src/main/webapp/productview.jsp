<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product View</title>

    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="ProductViewStyle.css" type="text/css">

</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
		<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<div class="preview col-md-6">
						
						<div class="preview-pic tab-content">
						  <div class="tab-pane active" id="pic-1" style = "margin: 6%;"><img src="${product.pic }" /></div>
						  
						</div>
						
						
					</div>
					<div class="details col-md-6 " >
						<h3 class="product-title">${product.name}</h3>
						<p class="product-description">Genre: ${product.category}</p>
						<p class="product-description">${product.descr}</p>
						
						<h4 class="price">Price: <span>Rs ${product.price}</span></h4>
						<h4 class="price">Available QTY : <span>${product.qty}</span></h4>
						<form action="/cartAdded" method="get">
						
						<input type="hidden" name="prod_id" value="${product.prod_id} ">
						<div class="input-group mb-3 input-group-sm">
     					<div class="input-group-prepend">
    					 <span class="input-group-text">Quantity</span>
    					 </div>
    					<input class="form-control" name="qty" type="number" required="required" max="${product.qty}" min="1">
  						</div>
  						<div class="action">
							<button class="add-to-cart btn btn-default" type="submit"  style="margin-top: 10px">Add to Cart</button>
							
						</div>
						</form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>