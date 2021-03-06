<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="pub">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/public/helpAndSupport/body/help_and_support_body.jsp" />
    <tiles:putAttribute name="extendHead" value="<link href='${staticWebsite}css/pub/page/helpsupport.css' rel='stylesheet' />" />
</tiles:insertDefinition>