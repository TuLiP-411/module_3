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
    <title>Search</title>
</head>
<body>
<h1>Search product</h1>
<p>
    <a href="products">Back to list!</a>
</p>
<form method="post">
    <table>
        <tr>
            <td><input type="text" name="search"></td>
            <td><input type="submit" value="search"></td>
        </tr>
    </table>
    <c:if test='${requestScope["search"] != null}'>
        <fieldset>
            <legend>Information ${requestScope["search"].getNameProduct()}</legend>
            <table>
                <tr>
                    <td>Name product:</td>
                    <td>${requestScope["search"].getNameProduct()}</td>
                </tr>
                <tr>
                    <td>Price:</td>
                    <td>${requestScope["search"].getPrice()}</td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>${requestScope["search"].getDescription()}</td>
                </tr>
                <tr>
                    <td>Producer:</td>
                    <td>${requestScope["search"].getProducer()}</td>
                </tr>
            </table>
        </fieldset>
    </c:if>
    <c:if test='${requestScope["fault"] != null}'>
        <span>${requestScope["fault"]}</span>
    </c:if>
</form>
</body>
</html>
