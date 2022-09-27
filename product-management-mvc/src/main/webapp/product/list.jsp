<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/5/2020
  Time: 11:38 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Product</title>
    <style>
        td {
            text-align: center;
            font-family: Arial;
            font-size: 20px;
            background-color: beige;
        }
        th {
            background-color: ivory;
        }
        p {
            font-size: 20px;
            font-family: Arial;
        }
    </style>
</head>
<body>
<p>
    <a href="products?action=create">Create new Product</a>
</p>
<p style="font-size: 20px">Search Product: </p>
<form method="post">
    <input type="text" name="searchByName" id="searchByName" placeholder="Enter product name">
    <input type="submit" value="Search">
</form>
<table style="color: blue" border="2px">
    <tr><th colspan="8"><h1>Products Management</h1></th></tr>
    <tr>
        <td width="140px" height="60px">ID Product</td>
        <td width="140px" height="60px">Name Product</td>
        <td width="140px" height="60px">Price Product</td>
        <td width="140px" height="60px">Description Product</td>
        <td width="140px" height="60px">Supplier Product</td>
        <td width="140px" height="60px">Images Product</td>
        <td width="140px" height="60px">Edit</td>
        <td width="140px" height="60px">Delete</td>
    </tr>
    <c:forEach items="${requestScope['products']}" var="product">
        <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getSupplier()}</td>
            <td><img width="136px" height="136px" src="images/<c:out value="${product.image}"/>"></td>
            <td><a href="products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>