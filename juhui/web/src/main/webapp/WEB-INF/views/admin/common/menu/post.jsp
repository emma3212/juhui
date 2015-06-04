<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;" >
        <span class="fa fa-link"></span>
        招聘管理
        <i class="fa fa-angle-left arrow"></i>

    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li <c:if test="${MethodModule eq 'Admin:Post:List'}">class="active"</c:if>>
            <a href="${website}admin/post/list">
                <span class="fa fa-plus-square-o"></span>
                查看岗位列表
                <c:if test="${MethodModule eq 'Admin:Post:List'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <li <c:if test="${MethodModule eq 'Admin:Post:Application:List'}">class="active"</c:if>>
            <a href="${website}admin/post/application/list">
                <span class="fa fa-table"></span>
                查看申请列表
                <c:if test="${MethodModule eq 'Admin:Post:Application:List'}"><i class="selected"></i></c:if>
            </a>
        </li>
    </ul>
</li>