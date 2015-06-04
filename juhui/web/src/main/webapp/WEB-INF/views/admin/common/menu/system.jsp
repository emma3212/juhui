<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<li>
    <a href="javascript:;" >
        <span class="fa fa-cogs"></span>
        系统配置管理
        <i class="fa fa-angle-left arrow fa-angle-left"></i>
    </a>

    <ul class="second-layer-menu" data-layer="2">


        <li <c:if test="${MethodModule eq 'Admin:Web:EmployeeFiles'}">class="active"</c:if> >
            <a href="${website}admin/web/employee/files/${web_party_id}">
                <span class="fa fa-cog"></span>
                员工档案管理
                <c:if test="${MethodModule eq 'Admin:Web:EmployeeFiles'}"><i class="selected"></i></c:if>
            </a>
        </li>

        <li <c:if test="${MethodModule eq 'Admin:Web:Statistics:Code'}">class="active"</c:if> >
            <a href="${website}admin/web/statistics/code/setting">
                <span class="fa fa-cog"></span>
                统计代码设置
                <c:if test="${MethodModule eq 'Admin:Web:Statistics:Code'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <li <c:if test="${MethodModule eq 'Admin:Sensitive:Code'}">class="active"</c:if> >
            <a href="${website}admin/security/pass/setting">
                <span class="fa fa-cog"></span>
                敏感操作密码设置
                <c:if test="${MethodModule eq 'Admin:Sensitive:Code'}"><i class="selected"></i></c:if>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <span class="fa fa-map-marker"></span>
                微信自定义菜单管理
                <i class="fa fa-angle-left arrow fa-angle-left"></i>
            </a>
            <ul class="third-layer-menu" data-layer="3">
                <li <c:if test="${MethodModule eq 'Admin:WeChat:menu:edit'}">class="active"</c:if> >
                    <a href="${website}admin/wechat/menu/edit">
                        <span class="fa fa-cog"></span>
                        修改微信自定义菜单
                        <c:if test="${MethodModule eq 'Admin:WeiChat:menu:edit'}"><i class="selected"></i></c:if>
                    </a>
                </li>

                <li <c:if test="${MethodModule eq 'Admin:WeChat:menu:view'}">class="active"</c:if> >
                    <a href="${website}admin/wechat/menu">
                        <span class="fa fa-cog"></span>
                        查看微信自定义菜单
                        <c:if test="${MethodModule eq 'Admin:WeChat:menu:view'}"><i class="selected"></i></c:if>
                    </a>
                </li>
            </ul>
        </li>
    </ul>

</li>
