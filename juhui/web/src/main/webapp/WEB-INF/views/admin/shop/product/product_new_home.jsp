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
    <title>添加产品</title>
</head>
<body>
<form action="${website}admin/shop/product" method="POST" enctype="multipart/form-data">
    品牌名称：<input name="name" type="text" /><br />
    排序：<input name="seqNum" type="text" /><br />
    条形码：<input name="barCode" type="text" /><br />
    品牌id：<input name="brandId" type="text" /><br />
    分类id：<input name="CategoryId" type="text" /><br />
    描述：<input name="desc" type="text" /><br />
    库存量：<input name="inventory" type="text" /><br />
    市场价格：<input name="marketPrice" type="text" /><br />
    商品类型：<input name="type" type="text" /><br />
    价格：<input name="price" type="text" /><br />
    已出售数量：<input name="salesVolume" type="text" /><br />
    购买成功赠送积分：<input name="sendCredits" type="text" /><br />
    图片：<input name="pic" type="file" /><br />
    <input type="submit" value="添加" />
</form>
</body>
</html>