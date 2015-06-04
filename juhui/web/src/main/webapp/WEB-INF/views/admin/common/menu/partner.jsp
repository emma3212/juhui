<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;" >
        <span class="fa fa-link"></span>
        合作管理
        <i class="fa fa-angle-left arrow"></i>

    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li <c:if test="${MethodModule eq 'Admin:Partner:List'}">class="active"</c:if>>
            <a href="${website}admin/partner/list">
                <span class="fa fa-plus-square-o"></span>
                查看合作列表
                <c:if test="${MethodModule eq 'Admin:Partner:List'}"><i class="selected"></i></c:if>
            </a>
        </li>
    </ul>
</li>