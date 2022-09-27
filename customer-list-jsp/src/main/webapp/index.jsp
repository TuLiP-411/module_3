<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>List customer</title>
</head>
<style>
    table {
        border-collapse: collapse;
        border: solid black 1px;
        border-inline: solid black;
    }

    th {
        font-size: xx-large;
        padding: 30px;
        border-collapse: collapse;
    }

    td {
        width: 200px;
        border: solid black 1px;
        border-collapse: collapse;
    }

    .heading {
        font-size: large;
        padding: 30px;
        border-collapse: collapse;
        border: solid black 1px;
        font-weight: bold;
    }
</style>
<% List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Nguyễn Thị Thu Hằng", "1997-08-20", "Phú Thọ", "https://thumbs.dreamstime.com/b/cute-cat-portrait-square-photo-beautiful-white-closeup-105311158.jpg"));
    customerList.add(new Customer("Phùng Tú Linh", "1996-06-02", "Sơn Tây", "https://thumbs.dreamstime.com/b/wild-gray-tabby-cat-bright-orange-eyes-lies-outdoors-square-photo-instagram-format-194924047.jpg"));
    customerList.add(new Customer("Đoàn Hoàng Thủy Tiên", "1995-03-04", "Hà Nội", "https://previews.123rf.com/images/yommy8008/yommy80081610/yommy8008161000081/67376534-square-photo-with-head-detail-of-few-weeks-old-tabby-cat-kitten-has-blue-eyes-and-dark-nose-baby-ani.jpg"));
    customerList.add(new Customer("Đăng Thu Trang", "1998-11-23", "Hà Nội", "data:image/jpeg;base64,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"));
    customerList.add(new Customer("Pham Ngoc Thúy", "1994-07-12", "Thái Nguyên", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYnB1kUbL6GcOvD4lqaiELCQzzDMGFwjHn4v2rB6KNldHvq4qkcBn1qH3nH1MSD1EHHaU&usqp=CAU"));
    request.setAttribute("ds", customerList);
%>
<body>
<table>
    <tr>
        <th colspan="4">Danh sách khách hàng</th>
    </tr>
    <tr class="heading">
        <td>Tên</td>
        <td>Ngày sinh</td>
        <td>Địa chỉ</td>
        <td>Ảnh</td>
    </tr>
    <c:forEach var="cus" items="${ds}">
        <tr>
            <td>${cus.name}</td>
            <td>${cus.dob}</td>
            <td>${cus.address}</td>
            <td><img src="${cus.imageLink}" width="100" height="100"></td>
        </tr>
    </c:forEach>
</table>
</body>

</html>