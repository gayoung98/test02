<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person List</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<table border=1 align=center>
	<tr>
		<th colspan=3> Person List
	</tr>
	<tr>
		<th>ID
		<th>Name
		<th>Contact
		
	</tr>
		 <c:forEach var="item" items="${list}">
		<tr>
			<td>${item.id}
			<td>${item.name}
			<td>${item.contact}
		
		</tr>
		</c:forEach>	
		<tr>
			<td align =center colspan=4>
			<a href=${pageContext.request.contextPath}/Index.jsp><button>Back</button></a>
		</tr>	
	</table>
</body>
</html>