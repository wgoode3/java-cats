<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cats</title>
	<link rel="stylesheet" href="/css/style.css" />
	<link rel="stylesheet" href="/node_modules/bootstrap/dist/css/bootstrap.min.css" />
</head>
<body>
    <div class="container">    
		<h1>This is a website about cats!</h1>
		
		<c:if test="${catOfTheDay != null }">
		<div class="jumbotron">
		  <h1>${catOfTheDay}</h1>
		</div>
		</c:if>
		
		<ul>
			<c:forEach items="${cats}" var="cat">
				<c:if test="${cat.charAt(0) == 'G'}">
					<li style="color:green;">${cat}</li>
				</c:if>
				<c:if test="${cat.charAt(0) != 'G'}">
					<li>${cat}</li>
				</c:if>
			</c:forEach>	
		</ul>
	    <form action="/addcat" method="post">
	        <div class="form-group">
	           <label>Name:</label>           
    	       <input type="text" name="name" class="form-control" />
	        </div>
	        <div class="form-group">
               <label>Type:</label>           
               <input type="text" name="catType" class="form-control" />
            </div>
	        <input type="submit" value="add cat" class="btn btn-dark" />
	    </form>
    </div>
    <script src="/js/script.js"></script>
</body>
</html>