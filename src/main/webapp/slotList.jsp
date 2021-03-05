<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Can't login</title>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style>
body {
	background-color: rgb(255, 223, 223);
	border: 18px;
	text-align: center;
}

h1 {
	color: rgb(0, 0, 0);
	font-family: Times New Roman;
	font-size: px;
	text-align: center;
}

h4 {
	color: rgb(0, 0, 0);
	font-family: Times New Roman;
	text-align: center;
}

.titolo {
	color: rgb(0, 0, 0);
	background-color: rgb(255, 100, 100);
	border: 1px solid black;
}

.Pick {
	background-color: rgb(255, 183, 183);
	text-align: center;
	font-size: 16px;
	margin: auto;
	width: 50%;
	padding: 10px;
}
</style>
</head>
<body>
	<h1>Slots</h1>
	<table>
		<tr>
			<th>room id</th>
			<th>slot id</th>
			<th>free seats</th>
			
		</tr>
		<c:forEach var="sl" items="${slot}">
			<tr>
				<td>${sl.id}</td>
				<td>${sl.sid}</td>
				<td>${sl.seats}</td>
				
			</tr>
		</c:forEach>
	</table>
	<p>
		Back <a href="/red/adminlog.jsp">home</a>
	</p>
</body>
</html>