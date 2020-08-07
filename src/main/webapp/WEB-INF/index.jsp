<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cats</title>
</head>
<body>
	<h1>This is a website about cats!</h1>
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
</body>
</html>