<%--
  User: zhangteng
  Date: 2014/8/27 9:40
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Insert title here</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>名称</th>
                <th>排序</th>
                <th>创建时间</th>
                <th>logo</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <img src="${tinyWebsite}/shop/product/logo/6\ab43e7d500b7d6c8b61fcf60ad6ca346140910924117463.png" />
            </tr>
            <c:forEach var="brand" items="${shopProductBrandList}">
                <tr>
                    <td>${brand.name}</td>
                    <td>${brand.seqNum}</td>
                    <td><fmt:formatDate value="${brand.createdTime}" pattern="yyyy-MM-dd HH:mm"/> </td>
                    <td>
                        <img src="${tinyWebsite}${brand.logoPath}">
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>