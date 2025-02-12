<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Quản lý sản phẩm</title>
</head>
<body>
<h2>Danh sách sản phẩm</h2>
<a href="view/product_form.jsp">Thêm sản phẩm</a>
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
                <a href="products?action=edit&id=${product.id}">Sửa</a> |
                <a href="products?action=delete&id=${product.id}" onclick="return confirm('Xóa sản phẩm?')">Xóa</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
