<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet">
<title>Edit Order</title>
</head>
<body>
<jsp:include page="/adminHeader"></jsp:include>
<br>
	<div class="row" style="margin:5%;">
		<div class="col-md-3">
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-default">Order No</span>
			  </div>
			  <input type="text" class="form-control" name="order_id" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${order.order_id }" disabled="disabled">
			</div>
			<br>
			<div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <span class="input-group-text" id="inputGroup-sizing-default">Order Date</span>
			  </div>
			  <input type="text" name="order_date" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${order.order_date }" disabled="disabled">
			</div>
			<br>
			<div class="input-group mb-3">
				 <div class="input-group-prepend">
				   <span class="input-group-text" id="inputGroup-sizing-default">Customer ID</span>
				 </div>
				 <input type="text" name="user_id" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" value="${order.user_id }" disabled="disabled">
			</div>
			<br>	
			<form action="/orderShipped" method="post">	
				<input type="hidden" name="order_id" value="${order.order_id }">
				<input type="hidden" name="user_id" value="${order.user_id }">
				<input type="hidden" name="order_date" value="${order.order_date }">
				<input type="hidden" name="state" value="S">
				<input type="submit" name="submit" value="Order Shipped">
			</form>
		</div>
		<div class="col-mid-3">
		</div>
		<div class="col-mid-4">
			<table class="table" style="">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">DVD ID</th>
			      <th scope="col">Name </th>
			      <th scope="col">Quantity</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="ord" items="${orderDetails}">
				    <tr>
				      <th scope="row">${ord.prod_id }</th>
				      <td>Name...</td>
				      <td>${ord.qty }</td>
				    </tr>
			    </c:forEach>
			   </tbody>
			  </table>
		</div>
	</div>
	
	<!-- 
	<div class="row" style="margin-left: 6%;">
		<div class="col-mid-4">
			<table class="table" style="">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">DVD ID</th>
			      <th scope="col">Name </th>
			      <th scope="col">Quantity</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<c:forEach var="ord" items="${orderDetails}">
				    <tr>
				      <th scope="row">${ord.prod_id }</th>
				      <td>Name...</td>
				      <td>${ord.qty }</td>
				    </tr>
			    </c:forEach>
			   </tbody>
			  </table>
		</div>
	</div>
	-->

</body>
</html>