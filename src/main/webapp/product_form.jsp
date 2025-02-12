<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm/Sửa sản phẩm</title>
</head>
<body>
<h2>${empty product ? "Thêm sản phẩm" : "Sửa sản phẩm"}</h2>
<form action="products" method="post">
    <input type="hidden" name="id" value="${product.id}">
    Tên sản phẩm: <input type="text" name="name" value="${product.name}" required><br>
    Giá: <input type="number" step="0.01" name="price" value="${product.price}" required><br>
    Số lượng: <input type="number" name="quantity" value="${product.quantity}" required><br>
    Mô tả: <textarea name="description">${product.description}</textarea><br>
    <input type="submit" value="${empty product ? "Thêm" : "Cập nhật"}">
</form>
</body>
</html>
