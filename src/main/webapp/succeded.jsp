<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booked</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="homepage.css">

<script

	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

</head>
<body>

<div class="titolo">
	<h1>Save A Seat</h1>
	<h4>Riservati un posto in una delle aule studio di Torino</h4>
	</div>
	<figure>
		<img id="image" src="/red/img/download.jpg" height="200px" width="350px" >
		<img id="image2" src ="/red/img/download_1.jpg" height ="200px" width="350px">
		<img id="image3" src = "/red/img/aula-studio-opera.jpg" height ="200px" width="350px">
	</figure>
	<h1>Ciao, ti sei prenotato con successo all'aula studio ${name} per lo slot ${ora} <br>
	Buono Studio!</h1>



	<a href="/red/index.html">home</a>

</body>
</html>