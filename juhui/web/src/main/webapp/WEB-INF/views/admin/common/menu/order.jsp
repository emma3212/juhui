<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;">
        <span class="fa fa-building-o"></span>
        订单管理
        <i class="fa fa-angle-left arrow"></i>

    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li>
            <a href="javascript:;">
                <span class="fa fa-file-text-o"></span>
                维护订单管理
                <i class="fa fa-angle-left arrow"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Maintenance:Type'}">class="active"</c:if> >
                    <a href="${website}admin/maintenance/type/0">
                        <span class="fa fa fa-dashboard"></span>
                        维护订单问题类型
                        <c:if test="${MethodModule eq 'Admin:Maintenance:Type'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:Maintenance:Order:UnFinish'}">class="active"</c:if> >
                    <a href="${website}admin/maintenance/order/unfinish">
                        <span class="fa fa-star-o"></span>
                        查看未完成维护订单
                        <c:if test="${MethodModule eq 'Admin:Maintenance:Order:UnFinish'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:Maintenance:Order:Finish'}">class="active"</c:if> >
                    <a href="${website}admin/maintenance/order/finish">
                        <span class="fa fa-star"></span>
                        查看已完成维护订单
                        <c:if test="${MethodModule eq 'Admin:Maintenance:Order:Finish'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:Maintenance:Order:Canceled'}">class="active"</c:if> >
                    <a href="${website}admin/maintenance/order/canceled">
                        <span class="fa fa-times"></span>
                        查看已取消维护订单
                        <c:if test="${MethodModule eq 'Admin:Maintenance:Order:Canceled'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <c:if test="${MethodModule eq 'Admin:Maintenance:Order:Edit'}">
                    <li class="active">
                        <a href="#">
                            <span class="fa fa-pencil"></span>
                            修改维护订单
                            <i class="selected"></i>
                        </a>
                    </li>
                </c:if>
                <c:if test="${MethodModule eq 'Admin:Maintenance:Order:Details'}">
                    <li class="active">
                        <a href="#">
                            <span class="fa fa-eye"></span>
                            查看维护订单
                            <i class="selected"></i>
                        </a>
                    </li>
                </c:if>
                <%--<li>--%>
                    <%--<a href="/pages/admin/adminPanel/order/maintainenceOrder/list.html">--%>
                        <%--<span class="fa fa-usd"></span>--%>
                        <%--查看取消维护订单--%>
                    <%--</a>--%>
                <%--<a href="/pages/admin/adminPanel/order/maintainenceOrder/list.html">--%>
                <%--<span class="fa fa-usd"></span>--%>
                <%--查看完成维护订单--%>
                <%--</a>--%>
                <%--</li>--%>
                <%--<li>--%>
                <%--<a href="/pages/admin/adminPanel/order/maintainenceOrder/list.html">--%>
                <%--<span class="fa fa-usd"></span>--%>
                <%--查看取消维护订单--%>
                <%--</a>--%>
                <%--</li>--%>
            </ul>
        </li>
        <%--<li>--%>
        <%--<a href="javascript:;">--%>
        <%--<span class="fa fa-trophy"></span>--%>
        <%--产品订单管理--%>
        <%--<i class="fa fa-angle-left arrow"></i>--%>
        <%--</a>--%>
        <%--<ul class="third-layer-menu" data-layer="3">--%>
        <%--<li>--%>
        <%--<a href="/pages/admin/adminPanel/product/product/add.html">--%>
        <%--<span class="fa fa-plus-square"></span>--%>
        <%--查看未完成产品订单--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="/pages/admin/adminPanel/product/product/all-list.html">--%>
        <%--<span class="fa fa-share-alt"></span>--%>
        <%--查看完成产品订单--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="/pages/admin/adminPanel/product/product/available-list.html">--%>
        <%--<span class="fa fa-star"></span>--%>
        <%--查看取消产品订单--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <%--</li>--%>
        <%--<li>--%>
        <%--<a href="javascript:;">--%>
        <%--<span class="fa fa-gear"></span>--%>
        <%--发票管理--%>
        <%--<i class="fa fa-angle-left arrow"></i>--%>
        <%--</a>--%>
        <%--<ul class="third-layer-menu" data-layer="3">--%>
        <%--<li>--%>
        <%--<a href="/pages/admin/adminPanel/product/subcategory/list.html">--%>
        <%--<span class="fa fa fa-dashboard"></span>--%>
        <%--查看发票申请列表--%>
        <%--</a>--%>
        <%--</li>--%>
        <%--</ul>--%>
        <%--</li>--%>
    </ul>

</li>