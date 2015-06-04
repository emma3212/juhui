<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="header user-header">
    <a class="logo" href="${website}home">
        <img src="${staticWebsite}img/admin/common/admin_logo.png" alt="" height="86">
    </a>

    <div class="user-nav">

        <a class="dropdown" id="J_userInfo" data-dropdown-box="J_userMenu" data-dropdown-wait=".5">
            <i class = "fa fa-user icon-margin-right"></i>
            ${requestScope.web_user_name}
            <i class="fa fa-caret-down press-right"></i>
        </a>
        <ul id="J_userMenu" class="dropdown-info">
            <li>
                <a href="${website}admin/web/employee/files/${web_party_id}"><i class="fa fa-user"></i>员工档案管理</a>
            </li>
            <li>
                <a href="${website}logout"><i class="fa fa-key"></i>注销登录</a>
            </li>
        </ul>
    </div>
    <div class="info">

        <div class="dropdown-container">
            <a href="${website}admin/maintenance/order/unfinish" class="nav_informs dropdown" id="J_maintenanceOrder" data-dropdown-box="J_maintenanceOrderMenu" data-dropdown-wait=".5">
                <i class="fa fa-tasks"></i>
                <span class="badge">${requestScope.web_user_admin_maintenance_num}</span>
                <span class="tip">未完成的维护订单</span>
            </a>
            <ul id="J_maintenanceOrderMenu" class="dropdown-new-box new-box">
                <c:choose>
                    <c:when test="${!empty web_user_Vip_maintenance_list}">
                        <c:forEach items="${web_user_Vip_maintenance_list}" var="order">
                                <li><a href="${website}admin/maintenance/order/${order.id}">订单：${order.num}</a></li>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                            <li style="text-align: center;">暂没有未完成维护订单</li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </div>
</div>
<script>
    KISSY.ready(function(S){
        S.use('widget/dropdown', function(){
        });
    })
</script>