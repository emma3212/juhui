<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="sidebar">
    <div class="sidebar-toggler"></div>
    <form class="sidebar-search">
        <div class="input-box">
            <input type="text" placeholder="关键字...">
            <button type="submit" class="submit"></button>
        </div>
    </form>
    <ul class="page-sidebar-menu" id="sideBar" data-layer="1">
        <%@ include file="/WEB-INF/views/vip/common/menu/home.jsp" %>
        <%@ include file="/WEB-INF/views/vip/common/menu/maintenance.jsp" %>
        <%@ include file="/WEB-INF/views/vip/common/menu/member.jsp" %>
        <%--<%@ include file="/WEB-INF/views/userCenter/common/menu/maintenance.jsp" %>--%>
        <%--<%@ include file="/WEB-INF/views/userCenter/common/menu/maintenance.jsp" %>--%>
        <%--<%@ include file="/WEB-INF/views/userCenter/common/menu/maintenance.jsp" %>--%>
        <%--<%@ include file="/WEB-INF/views/userCenter/common/menu/maintenance.jsp" %>--%>
        <%--<%@ include file="/WEB-INF/views/userCenter/common/menu/maintenance.jsp" %>--%>
    </ul>

</div>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('module/sidebar',function(S){
            PW.module.SideBar();
        });
    });
</script>