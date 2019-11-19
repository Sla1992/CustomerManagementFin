<%@page language="java" contentType="text/html; chatset=UTF-8" pageEncoding="utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h2>Customer:</h2>
<table>
    <tr>
        <th>id</th>
        <th>firstname</th>
        <th>lastname</th>
        <th>businessname</th>
    </tr>

    <c:forEach items="${costumers}" var="customer">
        <tr>
            <td>${customer.id} |</td>
            <td>${customer.firstName} |</td>
            <td>${customer.lastName} |</td>
            <td><a href="showUpdate?id=${customer.id}"> update |</a></td>
            <td><a href="deleteLocations?id=${customer.id}">delete</a></td>
        </tr>
    </c:forEach>
    <c:forEach items="" var="">

    </c:forEach>
</table>

<a href="showCreate">Add Location</a>
</body>
</html>