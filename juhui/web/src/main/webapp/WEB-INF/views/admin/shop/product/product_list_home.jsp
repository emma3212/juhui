<%@ page import="com.boman.common.entity.shop.ShopProduct" %>
<%@ page import="com.boman.service.shop.ShopProductService" %>
<%@ page import="com.boman.service.shop.impl.ShopProductServiceImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.ebiz.base.enums.TrueOrFalseEnums" %>
<%--
  Created by IntelliJ IDEA.
  User: jiangk576
  Date: 2014/9/2
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>产品管理</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>名称</th>
        <th>排序</th>
        <th>创建时间</th>
        <th>图片</th>
        <th>购买数量</th>
        <th>操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="product" items="${shopProductList}">
        <tr>
            <td>${product.name}</td>
            <td>${product.seqNum}</td>
            <td><fmt:formatDate value="${product.createdTime}" pattern="yyyy-MM-dd HH:mm"/> </td>
            <td><input type="text" name="amount"    /> </td>
            <td><input type="button" value="一键购" /></td>
            <td>
                <img src="${tinyWebsite}${product.picPath}">
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>