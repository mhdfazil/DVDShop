<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DVD Shop</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="homestyle.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 
</head>
<body>
<jsp:include page="UserHeader.jsp"></jsp:include>
 
 <div class = "card-wrap">
<c:forEach var="product" items="${product }">
 
 
  <div class="card" style="width: 25rem; float: left; padding: 10px; display:inline-block; margin:10px">
  <img class="card-img-top" src="${product.pic }" alt="Card image cap" style="width: 230px; height: 350px;">
  <div class="card-body">
    <h5 class="card-title">${product.name} </h5>
    
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item">${product.price}</li>
    <li class="list-group-item">${product.category}</li>
    <li class="list-group-item">${product.descr}</li>
     <li class="list-group-item">Available QTY : ${product.qty}</li>
    <li class="list-group-item"> <a href="<c:url value="productview?prod_id=${product.prod_id}" /> " id="viewbtn"  class="card-link">View</a></li>
  </ul>
  
 </div>

  
</c:forEach>

</div>
  
<!--    
<c:forEach var="product" items="${product }">    
 <div class="w3-card-4">

<header class="w3-container w3-light-grey">
  <h3>${product.name}</h3>
</header>

<div class="w3-container">
  <p>${product.category}</p>
  <hr>
  <img src= "/DVD/myImage/imageDisplay?id=${product.prod_id }" alt="Avatar" class="w3-left w3-circle">
  <p>${product.descr}</p>
</div>

<button class="w3-button w3-block w3-dark-grey">ADD TO CART</button>

</div>
</c:forEach>
-->
                
</body>
</html>