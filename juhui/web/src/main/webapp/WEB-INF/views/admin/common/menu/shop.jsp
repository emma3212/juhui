<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;" >
        <span class="fa fa-dropbox"></span>
        产品管理
        <i class="fa fa-angle-left arrow fa-angle-left"></i>
    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li >
            <a href="javascript:;">
                <span class="fa fa-windows"></span>
                配置管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Shop:Category'}">class="active"</c:if>>
                    <a href="${website}admin/shop/product/category">
                        <span class="fa fa-dashboard"></span>
                        产品分类管理
                        <c:if test="${MethodModule eq 'Admin:Shop:Category'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:Shop:Payment'}">class="active"</c:if> >
                    <a href="${website}admin/shop/product/payment">
                        <span class="fa fa-usd"></span>
                        支付方式管理
                        <c:if test="${MethodModule eq 'Admin:Shop:Payment'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>
    </ul>
</li>