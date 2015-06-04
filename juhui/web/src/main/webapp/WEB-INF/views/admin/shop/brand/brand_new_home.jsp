<%--
  User: zhangteng
  Date: 2014/8/27 9:39
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>添加品牌</title>
</head>
<body>
    <form action="${website}admin/shop/brand" method="POST" enctype="multipart/form-data">
        品牌名称：<input name="name" type="text" /><br />
        排序：<input name="seqNum" type="text" /><br />
        logo：<input name="logoPic" type="file" /><br />
        <input type="submit" value="添加" />
    </form>
</body>
</html>