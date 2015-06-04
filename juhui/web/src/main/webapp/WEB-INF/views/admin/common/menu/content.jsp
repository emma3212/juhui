<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;" >
        <span class="fa fa-list-alt"></span>
        内容管理
        <i class="fa fa-angle-left arrow fa-angle-left"></i>
    </a>
    <ul class="second-layer-menu" data-layer="2">
        <li >
            <a href="javascript:;">
                <span class="fa fa-file-o"></span>
                页面管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Content:Public:Page'}">class="active"</c:if> >
                    <a href="${website}admin/public/page">
                        <span class="fa fa-table"></span>
                        查看页面列表
                        <c:if test="${MethodModule eq 'Admin:Content:Public:Page'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>

        <li >
            <a href="javascript:;">
                <span class="fa fa-paperclip"></span>
                标签管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Content:Biz:Tag'}">class="active"</c:if>>
                    <a href="${website}admin/tag/home">
                        <span class="fa fa-table"></span>
                        查看标签列表
                        <c:if test="${MethodModule eq 'Admin:Content:Biz:Tag'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>

        <li >
            <a href="javascript:;">
                <span class="fa fa-link"></span>
                友情链接管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:Content:Friendly:Link'}">class="active"</c:if>>
                    <a href="${website}admin/link">
                        <span class="fa fa-table"></span>
                        查看友情链接列表
                        <c:if test="${MethodModule eq 'Admin:Content:Friendly:Link'}"><i class="selected"></i></c:if>
                    </a>
                </li>
                <li <c:if test="${MethodModule eq 'Admin:Content:Friendly:Link:Add'}">class="active"</c:if>>
                    <a href="${website}admin/link/add">
                        <span class="fa fa-plus-square-o"></span>
                        添加友情链接
                        <c:if test="${MethodModule eq 'Admin:Content:Friendly:Link:Add'}"><i class="selected"></i></c:if>
                    </a>
                </li>

                <c:if test="${MethodModule eq 'Admin:Content:Friendly:Link:Edit'}">
                    <li class="active">
                        <a href="#">
                            <span class="fa fa-file-pdf-o"></span>
                            修改友情链接信息
                            <i class="selected"></i>
                        </a>
                    </li>
                </c:if>

            </ul>
        </li>
    </ul>
</li>