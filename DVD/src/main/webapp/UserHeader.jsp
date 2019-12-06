<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="homestyle.css" type="text/css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-inverse" style = "border-radius: 0;">
  <div class="container-fluid" id="header1" >
    <div class="navbar-header" 	>
      <a class="navbar-brand" href="/home" style="font-size:30px;">DVD Shop</a>
    </div>
    <form id="search_bar" action="search" method="GET"  >
    
     <div  class="dropdown" id="drop_down_genre" style="float: right; margin-top: 16px; margin-right: 28%;">
    <select name="genre" id="genreSelect">
     <option value="">SELECT GENRE</option>
     <option value="Action">Action</option>
     <option value="Drama">Drama</option>
     <option value="Crime">Crime</option>
     <option value="Comedy">Comedy</option>
     <option value="Fantasy">Fantasy</option>
     <option value="Fantasy">Sci-Fi</option>
     <option value="Fantasy">War</option>
  </select>
		</div>
  
          <input type="text" name="searchtxt"class="form-control" id="txt_search" style="width:12%;border: 2px solid teal; top: 8px; left: 72%; position: absolute;">

              <button type="submit" id="btnsearch1"  ><i class="fas fa-search"></i></button>
  		
      </form>
      
      <sec:authorize access="isAuthenticated()">
		    <a href="/logout" class="btn btn-danger btn-lg active" role="button" aria-pressed="true" style="position: absolute;right: 7%">Logout</a> 
		    <a href="/cart" class="btn btn-danger btn-lg active" role="button" aria-pressed="true" style="position: absolute;right: 1%">Cart</a> 
		</sec:authorize>
		<sec:authorize access="!isAuthenticated()">
		    <a href="/login" class="btn btn-danger btn-lg active" role="button" aria-pressed="true" style="position: absolute;right: 7%">Login</a> 
		    
		</sec:authorize>
      
      </div>
 </nav>
</body>
</html>