<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 14/5/2020
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Create New Product</title>
    <style>
        td {
            text-align: center;
            font-size: 20px;
            font-family: Arial;
        }
    </style>
</head>
<body>
<form method="post">
    <c:if test="${requestScope['message']!=null}">
        <span style="color: green">${requestScope['message']}</span>
    </c:if>
    <p>
        <a href="products">Back to list</a>
    </p>
    <table>
        <tr>
            <td>ID: </td><td><input type="text" name="id" id="id"></td>
        </tr>
        <tr>
            <td>Name: </td><td><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td>Price: </td><td><input type="text" name="price" id="price"></td>
        </tr>
        <tr>
            <td>Description: </td><td><input type="text" name="description" id="description"></td>
        </tr>
        <tr>
            <td>Supplier: </td><td><input type="text" name="supplier" id="supplier"></td>
        </tr>
        <tr>
            <td>Image: </td><td><input type="text" name="image" id="image"></td>
        </tr>
        <tr>
            <td><input type="submit" value="Create"></td>
        </tr>
    </table>
</form>
</body>
</html>
