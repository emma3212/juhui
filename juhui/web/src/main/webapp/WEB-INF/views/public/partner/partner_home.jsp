<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/partner/body/partner_body.jsp"/>
    <tiles:putAttribute name="extendHead"
                        value="<link href='${staticWebsite}css/pub/page/partner.css' rel='stylesheet' />" />
</tiles:insertDefinition>
<script type="text/javascript" src="${staticWebsite}js/pub/partner.js"></script>

<script type="text/javascript">
    $(function () {
        $.partner.init({
                    // form提交地址
                    url: '${website}public/partner/ajax/add'
                });
    });
</script>