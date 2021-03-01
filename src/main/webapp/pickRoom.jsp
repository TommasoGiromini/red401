<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logged</title>
<link rel="icon" type="image/x-icon" href="/jes/favicon.ico">
<link rel="stylesheet" type="text/css" href="/jes/css/simple.css">
</head>
<body>
	<h1>Hi ${param.user}</h1>

	<p>scegli l'aula studio più vicina a te</p>

	<iframe
		src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d11478.171300669423!2d7.680310740781523!3d45.06124696670422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1saule%20studio%20torino!5e0!3m2!1sit!2sit!4v1614608334317!5m2!1sit!2sit"
		width="600" height="450" style="border: 0;" allowfullscreen=""
		loading="lazy"></iframe>

	<p>Oppure scegli da qui:</p>
	<select name="room">
		<option value="/red/room/get?id=1"></option>
		<option value="/red/room/get?id=2"></option>
		<option value="/red/room/get?id=3"></option>
		<option value="/red/room/get?id=4"></option>
		<option value="/red/room/get?id=5"></option>
		</select>
		<button type="submit"> Conferma </button>
		<p>
			Back <a href="/red/index.html">home</a>
		</p>
</body>
</html>