<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booked</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<style>
body {
	background-color: rgb(197, 236, 230);
	border: 3px;
	margin: 10px;
	text-align: center;
}

h1, h2 {
	color: rgb(230, 16, 16)
}

title {
	color: red
}

#spiegazione {
	color: rgb(230, 16, 16)
}

input {
	background-color: #d0d4f5;
	padding: 5px;
}

p {
	font-family: Arial;
	font-size: 20px;
}
</style>
</head>
<body>

	
		<img id="image1" src="img/download_1.jpg" width="300px">
	<h1>Ciao, ti sei prenotato con successo all'aula studio ${param.name} per lo slot ${param.slotid} <br>
	Buono Studio!</h1>



	<a href="/red/index.html">home</a>

</body>
</html>