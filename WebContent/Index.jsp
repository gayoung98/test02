<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <style>
        * {
            box-sizing: border-box;
            text-align: center;
        }

        div {
            border: 1px solid black;
        }

        .container {
            width: 400px;
            height: 80px;
            margin: auto;
        }

        .title {
            height: 25px;
        }

        .toInput {
            float: left;
            width: 25%;
            height: 55px;
            line-height: 45px;
        }

        .toOutput {
            float: left;
            width: 25%;
            height: 55px;
            line-height: 45px;
        }
        
         .toDelete {
            float: left;
            width: 25%;
            height: 55px;
            line-height: 45px;
        }

        .toModify {
            float: left;
            width: 25%;
            height: 55px;
            line-height: 45px;
        }
    </style>
     <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script>
        $(function () {
            $("#toInput").on("click", function () {
				location.href="${pageContext.request.contextPath}/member/PersonInput.person";
            });

            $("#toOutput").on("click", function () {
				location.href="${pageContext.request.contextPath}/memeber/PersonList.person";

            });
            
            $("#toDelete").on("click", function () {
				location.href="${pageContext.request.contextPath}/member/PersonDelete.person";

            });
            $("#toModify").on("click", function () {
				location.href="${pageContext.request.contextPath}/member/PersonModify.person";


            });
        })
    </script>
</head>

<body>
    <div class="container">
        <div class="title">Index</div>
        <div class="toInput">
            <button id="toInput">PersonInput</button>
        </div>
        <div class="toOutput">
            <button id="toOutput">PersonList</button>
        </div>
         <div class="toDelete">
            <button id="toDelete">PersonDelete</button>
        </div>
           <div class="toModify">
            <button id="toModify">PersonModify</button>
        </div>
    </div>
</body>

</html>