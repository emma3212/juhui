<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/freeItMaintenance/body/free_it_maintenance_body.jsp" />
    <tiles:putAttribute name="extendHead" value="<link href='${staticWebsite}css/pub/page/freeITmaintainence.css' rel='stylesheet' />" />
</tiles:insertDefinition>

<script type="text/javascript" src="${staticWebsite}js/pub/freeITmaintainence.js"></script>
<script type="text/javascript">
    $(function(){
        $.free.init()
    });
</script>