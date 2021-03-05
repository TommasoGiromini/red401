<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
</style>
</head>
<body>
<div class="titolo">
	<h1>Save A Seat</h1>
	<h4>Riservati un posto in una delle aule studio di Torino</h4>
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
    <h2>Login for "${param.user}" rejected!</h2>
    <p>Please subscribe</p> <br>
    <p>
        Back <a href="/red/index.html">home</a>
    </p>
</body>
</html>