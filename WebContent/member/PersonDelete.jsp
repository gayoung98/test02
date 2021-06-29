<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
   <table border="1" align="center">
        <form action="deletePersonProc.person" method="get">
        <tr>
            <th colspan="4">Person List</th>
        </tr>
        <tr>
            <th>ID
            <th>Name
            <th>Contact
            
        </tr>
        <c:forEach var="i" items="${list}">
           <tr>
                <td><input type="checkbox" name="deleteId" value=${i.id}>
                <td>${i.name}
                <td>${i.contact}
            </tr>
        </c:forEach>
        <tr>
           <td colspan=4 align="center">
            <input type="submit" value="Delete">
            <a href="${pageContext.request.contextPath}/Index.jsp"><button type="button">Back</button></a>
        </tr>
    </form>    
    </table>
</body>
</html>