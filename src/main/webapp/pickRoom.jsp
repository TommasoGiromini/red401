
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged</title>
<link rel="stylesheet" type="text/css" href="/pickRoom.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
</head>
<body>
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