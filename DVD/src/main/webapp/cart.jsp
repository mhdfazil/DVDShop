<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="homestyle.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 <!-- style cart  -->
   <title>Shoping Cart</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="utf-8">
<style>
.main
{
  float: left;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: 50px;
  text-align: center;
  font-family: arial;

}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #FF6347;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}




/************/

body {

  font-family: arial;
  color: red;
}

/* Style the header */
header {
  background-color: red;
  padding: 50px;
  text-align: center;
  font-size: 35px;
  color: white;
}


.split {

}

.left {
  height: 100%;
  width: 75%;
  position: fixed;
  z-index: 1;
  top: 100px;
  overflow-x: hidden;
  padding-top: 20px;
  padding-bottom: 100px;
  left: 0;
  background-color:#f1f1f1;
}

.right {
  height: 100%;
  width: 25%;
  position: fixed;
  z-index: 1;
  top: 100px;
  overflow-x: hidden;
  padding-top: 10px;
  right: 0;
  background-color: #ccc;
}


/************/
body {
  font-family: Arial;
  font-size: 17px;
  padding: 0px;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}


.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

span.price {
  float: right;
  color: grey;
}

</style>
</head>
<body>

 <header>
  <h2>Cart</h2>
</header> -

<div class="split left">
  <div class="centered">
			 <c:forEach var="product" items="${product }">
			  <form method="POST" action="/removecart">
                <div class="main">
                  <div class="card">
                 
					  <img src="data:image/jpeg;base64,'.base64_encode($row['2'] ).'" alt=" " style="width:210px;height:250px;">
                      <h1>${product.name}</h1>
                      <p class="price"></p>
                      <p>${product.category}</p>
                      <p>Rs.${product.price}</p>
                      <input type="hidden" name="prod_id" value="${product.prod_id}">
   					 <p><button name="btn_remove" type="submit">Remove</button></p>

                  </div>
                   
                  </div>
                </form>
			 </c:forEach>
 </div>
</div>


<div class="split right">
  <div class="centered">
      <form method="POST" action="/addOrderConfirm">
        <div class="col-25">
          <div class="container">
            <h4>Cart summary
              <span class="price" style="color:black">
                <i class="fa fa-shopping-cart"></i>
                <b></b><br/>
              </span><br/><br/>
            </h4>
            <c:forEach var="item" items="${item }">
            	<c
            </c:forEach>
           <c:forEach var="product" items="${product }">
           		<input type="hidden" name="prod_id" value="${product.prod_id }">
           		<input type="hidden" name="uid" value="1">
           		<input type="hidden" name="qty" value="1">
                            <pre style="font-siz:14px;"><p>${product.name} 			  ${product.price}</p></pre>
                            <c:set var="tot" value="${tot + product.price }" />
           </c:forEach>
            <hr>
            <p>Total   <b><p class="price"> Rs.${tot}</p></b></p>
            <hr>
            <p><button name="btn_order" type="submit">Order</button></p>
          </div>
        </div>
      </form>
 </div>
</div>

</head>
<footer style="height: 10px; background-color: black;"></footer>





         
</body>
</html>