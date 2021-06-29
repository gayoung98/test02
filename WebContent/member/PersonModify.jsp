<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	$(function(){
		$("#modiForm").on("submit", function(){
			if($("#modiId").val() ==""){
				alert("수정할 id를 확인해주세요.");
				return false; // submit 취소!
			}else if($("#modiName").val() ==""){
				alert("수정할 작성자를 확인해주세요.");
				return false; 				
			}else if($("#modiContact").val() ==""){
				alert("수정할 메세지를 확인해주세요.");
				return false;
			}
			
		});
	});
</script>
</head>
<body>
	<table border=1 align=center>
		<tr>
			<th colspan=4>Message List
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
			<td colspan=4>
				<form action="${pageContext.request.contextPath}/ModifyProc.person" method="get" id="modiForm">
					<input type="text" name="modiId" id="modiId" placeholder="수정할 대상 ID">
					<input type="text" name="modiName" id="modiName" placeholder="수정할 이름">
					<input type="text" name="modiContact" id="modiContact" placeholder="수정할 연락처"> <input type="submit">
				</form>
			</td>
		</tr>
		<tr>
			<td colspan=4 align="center"><a href="index.jsp"><button>Back</button></a>
		</tr>
	</table>
</body>
</html>