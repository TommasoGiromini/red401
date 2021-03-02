
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

	<a href="/pickRoom.html">Scegli aula studio più vicina a te </a> 
	<br>
	
	<a href = "/pickRoomList.html">Oppure scegli dall'elenco</a>
	
			
			Back <a href="/red/index.html">home</a>
	
</body>
</html>