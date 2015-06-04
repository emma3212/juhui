<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="vip">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/vip/maintenance/body/view_body.jsp" />
</tiles:insertDefinition>

<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/tab',function(){})
    })
</script>