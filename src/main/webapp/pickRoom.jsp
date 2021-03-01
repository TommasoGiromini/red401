<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <h1>    <c:choose> 
    <c:when test="${morning}"> Good morning </c:when>
    <c:otherwise> Good afternoon </c:otherwise>
    </c:choose> ${param.user}</h1>
    <p>
        Back <a href="/jes/index.html">home</a>
    </p>
</body>
</html>