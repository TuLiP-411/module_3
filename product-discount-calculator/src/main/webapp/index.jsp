<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h2>Product Discount Calculator</h2>
<form method="post" action="/display-discount">
    <table>
        <tr>
            <td><input type="text" name="product" placeholder="Enter product description: "/></td>
        </tr>
        <tr>
            <td><input type="text" name="price" placeholder="Enter product price: "/></td>
        </tr>
        <tr>
            <td><input type="text" name="discount" placeholder="Enter discount percent: "/></td>
        </tr>
        <tr>
            <td><input type="submit" id="submit" value="Calculate"/></td>
        </tr>
    </table>
</form>
</body>
</html>