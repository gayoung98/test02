<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Input Form</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<style>
        .container{
            border: 1px solid black;
            width: 180px;
            margin: auto;
            text-align: center;
        }
    </style>
</head>
<body>
	<div class="container">
        <form action="input.person" method="get">
            <input type=text name=name placeholder="이름">
            <input type="text" name=contact placeholder="전화번호">
            <input type="submit">
        </form>
    </div>
</body>
</html>