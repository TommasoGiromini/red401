<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Student</title>
<link rel="icon" type="image/x-icon" href="/jed/favicon.ico">
<link rel="stylesheet" type="text/css" href="/jed/css/simple.css">
</head>
<body>
    <h1>Student</h1>
    <c:choose>
        <c:when test="${student eq null}">
            <p>
                Failure operating on coder
                <c:if test="${param.id ne null}">with id ${param.id}</c:if>
            </p>
        </c:when>
        <c:otherwise>
            <p>Coder is ${coder.firstName} ${coder.lastName}</p>
            <p>hired on ${coder.hireDate}, salary is ${coder.salary}</p>
        </c:otherwise>
    </c:choose>
    <p>
        Back <a href="/red/homepage.html">home</a>
    </p>
</body>
</html>