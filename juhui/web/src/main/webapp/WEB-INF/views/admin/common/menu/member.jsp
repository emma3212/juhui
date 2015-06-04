<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;" >
        <span class="fa fa-user"></span>
        会员管理
        <i class="fa fa-angle-left arrow fa-angle-left"></i>

    </a>

    <ul class="second-layer-menu" data-layer="2">
        <li <c:if test="${MethodModule eq 'Admin:InActiveMember:List'}">class="active"</c:if> >
            <a href="${website}admin/member/inactive/list">
                <span class="fa fa-dot-circle-o"></span>
                查看未激活会员列表
                <c:if test="${MethodModule eq 'Admin:InActiveMember:List'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <li <c:if test="${MethodModule eq 'Admin:ActiveMember:List'}">class="active"</c:if> >
            <a href="${website}admin/member/active/list">
                <span class="fa fa-circle-o"></span>
                查看已激活会员列表
                <c:if test="${MethodModule eq 'Admin:ActiveMember:List'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <li <c:if test="${MethodModule eq 'Admin:SuspendMember:List'}">class="active"</c:if> >
            <a href="${website}admin/member/suspend/list">
                <span class="fa fa-circle"></span>
                查看停用会员列表
                <c:if test="${MethodModule eq 'Admin:SuspendMember:List'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <c:if test="${MethodModule eq 'Admin:Member:Edit'}">
            <li class="active">
                <a href="#">
                    <span class="fa fa-pencil"></span>
                    修改会员信息
                    <i class="selected"></i>
                </a>
            </li>
        </c:if>
    </ul>

</li>