<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/maintenance/body/maintenance_order_edit_body.jsp" />
</tiles:insertDefinition>

<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('widget/box, page/order/maintainenceOrder/edit, widget/tab', function () {
            PW.page.maintainenceOrder.Edit({
                roleTypeId: ${roleTypeId}
            });
        })
    })
</script>