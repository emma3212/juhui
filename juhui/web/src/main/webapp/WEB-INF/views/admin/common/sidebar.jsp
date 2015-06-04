<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="sidebar">
    <div class="sidebar-toggler"></div>
    <form class="sidebar-search">
        <div class="input-box">
            <input type="text" placeholder="关键字...">
            <button type="submit" class="submit"></button>
        </div>
    </form>

    <ul class="page-sidebar-menu" id="sideBar" data-layer="1">
        <%@ include file="/WEB-INF/views/admin/common/menu/home.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/content.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/group.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/member.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/shop.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/order.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/post.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/partner.jsp" %>
        <%@ include file="/WEB-INF/views/admin/common/menu/system.jsp" %>
    </ul>
</div>
<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('module/sidebar', function (S) {
            PW.module.SideBar();
        });
    });
</script>