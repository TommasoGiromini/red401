
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
<style>
body{
    background-color: rgb(255, 223, 223);
    border: 18px ;
    text-align: center; 
}

h1{
    color: rgb(0, 0, 0);
    font-family: Times New Roman;
    font-size: px;
    text-align: center; 
    
}
h4, a{
    color: rgb(0, 0, 0);
    font-family: Times New Roman;
    font-size: 18px;
    text-align: center; 
    }
    
.titolo{
    color:rgb(0, 0, 0);
    background-color: rgb(255, 100, 100);
    border: 1px solid black;
    
    
}

#spiegazione{
 color: rgb(230, 16, 16);
 text-align : center; 
}


</style>
</head>
<body>
<div class="titolo">
	<h1>Save A Seat</h1>
	<h4>Riservati un posto in una delle aule studio di Torino</h4>
	</div>
	<figure>
		<img id="image" src="img/download.jpg" height="200px" width="350px" >
		<img id="image2" src ="img/download_1.jpg" height ="200px" width="350px">
		<img id="image3" src = "img/aula-studio-opera.jpg" height ="200px" width="350px">
	</figure>
	<h1>Ciao ${param.user}</h1>


	<a href="/red/pickRoom.html">Scegli aula studio più vicina a te </a>
	<br>
	<br>

	<a href="/red/pickRoomList.html">Oppure scegli dall'elenco</a>
	<br>
	<br> Back
	
	<a href="/red/index.html">home</a>

</body>
</html>