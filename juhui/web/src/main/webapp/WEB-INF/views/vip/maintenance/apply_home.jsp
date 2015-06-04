<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="vip">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="extendHead"
                        value="<link rel='stylesheet' href='${staticWebsite}tool/base-widget/css/msg.css'>" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/vip/maintenance/body/apply_body.jsp" />
    <tiles:putAttribute name="extendHead" value="<link rel='stylesheet' href='${staticWebsite}tool/base-widget/css/msg.css'>" />

</tiles:insertDefinition>

<script>
    KISSY.ready(function(S){
        S.use('widget/tab, page/freemaintainence/start-maintainence, widget/btn', function(S){
            PW.page.freemaintainence.Start();
        })
    })
</script>
