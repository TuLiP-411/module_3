<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/5/2020
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product</title>
    <style>
        td {
            text-align: center;
            font-size: 20px;
            font-family: Arial;
        }
    </style>
</head>
<body>
<h1>Customer information </h1>
<table border="1">
    <tr><td>ID: </td><td>${requestScope['product'].getId()}</td></tr>
    <tr><td>Name: </td><td>${requestScope['product'].getName()}</td></tr>
    <tr><td>Price: </td><td>${requestScope['product'].getPrice()}</td></tr>
    <tr><td>Description: </td><td>${requestScope['product'].getDescription()}</td></tr>
    <tr><td>Supplier: </td><td>${requestScope['product'].getSupplier()}</td></tr>
    <tr><td>Image: </td><td><img width="136px" height="136px" src="images/<c:out value="${product.image}"/>"></td></tr>
</table>
</body>
</html>
