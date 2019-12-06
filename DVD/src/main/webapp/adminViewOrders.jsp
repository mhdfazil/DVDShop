<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Orders</title>
<link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css"
        rel="stylesheet">
<link href="webjars/font-awesome/5.10.1/css/all.css"
        rel="stylesheet">
</head>
<body>
<jsp:include page="/adminHeader"></jsp:include>
<br>
	<table class="table" style="margin: 5%; width: 90%; text-align: center;">
	  <thead class="thead-dark">
	    <tr>
	      <th scope="col">Order No</th>
	      <th scope="col">Order Date</th>
	      <th scope="col">Customer ID</th>
	      <th scope="col">Edit</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="order" items="${orders}">
		    <tr>
		      <th scope="row">${order.order_id }</th>
		      <td>${order.order_date }</td>
		      <td>${order.user_id }</td>
		      <td><a href="/adminEditOrder?id=${order.order_id }"><i class="fas fa-edit"></i></a></td>
		    </tr>
	    </c:forEach>
	   </tbody>
	  </table>
	  <c:if test="${empty orders}">
	  		<h3 style="text-align: center; color: gold;">There is no orders to be shipped.</h3>
	  </c:if>
</body>
</html>