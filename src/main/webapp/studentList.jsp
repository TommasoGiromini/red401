<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student list</title>

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
	padding: 10px;
}
.table {
text-align: center;}

</style>
</head>
<body>
	<div class="titolo">
		<h1>Save A Seat</h1>
		<p>Riservati un posto in una delle aule studio di Torino</p>
	</div>
	<br>

	<figure>
		<img id="image" src="/red/img/download.jpg" height="200px"
			width="500px">
		<img id="image2" src="/red/img/download_1.jpg" height="200px"
			width="350px">
		<img id="image3" src="/red/img/aula-studio-opera.jpg" height="200px"
			width="350px">
	</figure>
	<h2>Students</h2>
	<br>
	<section class="Pick">

		<table class="table">
			<tr>
				<th>id</th>
				<th>&nbsp &nbsp &nbsp first name</th>
				<th>&nbsp&nbsp&nbsp&nbsp last name</th>
				<th>&nbsp&nbsp&nbsp universitynumber</th>
				<th>&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp email</th>
				<th>&nbsp&nbsp&nbsp&nbsp password</th>
				<th>&nbsp&nbsp&nbsp&nbsp roomID</th>
				<th>&nbsp&nbsp&nbsp&nbsp slotID</th>


			</tr>
			<c:forEach var="stud" items="${student}">
				<tr>
					<td>${stud.id}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.firstName}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.lastName}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.number}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.email}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.password}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.roomId}</td>
					<td>&nbsp&nbsp&nbsp&nbsp ${stud.slotId}</td>
				</tr>
			</c:forEach>
		</table></section>
		<br>
		<p>
			Back <a href="/red/adminlog.jsp">home</a>
		</p>
	
</body>
</html>