<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li >
    <a href="javascript:;" >
        <span class="fa fa-sitemap"></span>
        组织管理
        <i class="fa fa-angle-left arrow fa-angle-left"></i>
    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li >
            <a href="javascript:;">
                <span class="fa fa-map-marker"></span>
                服务区域管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Region:Add'}">class="active"</c:if>>
                    <a href="${website}admin/region/new" >
                        <span class="fa fa-plus-square"></span>
                        添加服务区域
                        <c:if test="${MethodModule eq 'Admin:Region:Add'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:Region:List'}">class="active"</c:if> >
                    <a href="${website}admin/region/list">
                        <span class="fa fa-table"></span>
                        查看服务区域列表
                        <c:if test="${MethodModule eq 'Admin:Region:List'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>
        <li >
            <a href="javascript:;">
                <span class="fa fa-tasks"></span>
                服务站点管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Site:List'}">class="active"</c:if> >
                    <a href="${website}admin/site/list">
                        <span class="fa fa-table"></span>
                        查看服务站点列表
                        <c:if test="${MethodModule eq 'Admin:Site:List'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <span class="fa fa-user"></span>
                角色管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Role:List'}">class="active"</c:if> >
                    <a href="${website}admin/role/list">
                        <span class="fa fa-table"></span>
                        查看角色管理列表
                        <c:if test="${MethodModule eq 'Admin:Role:List'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>

        <li>
            <a href="javascript:;">
                <span class="fa fa-group"></span>
                员工管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Employee:Add'}">class="active"</c:if>>
                    <a href="${website}admin/employee/new">
                        <span class="fa fa-plus-square-o"></span>
                        添加员工
                        <c:if test="${MethodModule eq 'Admin:Employee:Add'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:ActiveEmployee:List'}">class="active"</c:if>>
                    <a href="${website}admin/employee/active/list">
                        <span class="fa fa-check-square-o"></span>
                        查看启用员工列表
                        <c:if test="${MethodModule eq 'Admin:ActiveEmployee:List'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:InActiveEmployee:List'}">class="active"</c:if>>
                    <a href="${website}admin/employee/inactive/list">
                        <span class="fa fa-ban"></span>
                        查看停用员工列表
                        <c:if test="${MethodModule eq 'Admin:InActiveEmployee:List'}"><i class="selected"></i></c:if>
                    </a>
                </li>

                <c:if test="${MethodModule eq 'Admin:Employee:Edit'}">
                <li class="active">
                    <a href="#">
                        <span class="fa fa-file-pdf-o"></span>
                        修改员工信息
                        <i class="selected"></i>
                    </a>
                </li>
                </c:if>
            </ul>
        </li>
    </ul>
</li>