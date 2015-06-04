<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="extendHead"
                        value="<link rel='stylesheet' href='${staticWebsite}tool/base-widget/css/msg.css'>
    <style type='text/css'>
    .controls textarea{
    height: 400px;
    }
    </style>" />
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/systemConfig/body/wechat_menu_edit_body.jsp" />
</tiles:insertDefinition>