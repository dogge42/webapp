<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách sản phẩm</title>
</head>
<body>
<h2>Danh sách sản phẩm</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Mô tả</th>
        <th>Thao tác</th>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.quantity}</td>
            <td>${product.description}</td>
            <td>
                <a href="products?action=delete&id=${product.id}" onclick="return confirm('Xóa sản phẩm?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>

<h3>Thêm sản phẩm</h3>
<form action="products" method="post">
    Tên: <input type="text" name="name" required><br>
    Giá: <input type="number" step="0.01" name="price" required><br>
    Số lượng: <input type="number" name="quantity" required><br>
    Mô tả: <textarea name="description"></textarea><br>
    <input type="submit" value="Thêm">
</form>
</body>
</html>
