<%--
  User: zhangteng
  Date: 2014/11/3 16:34
--%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<tiles:insertDefinition name="wechat">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/wechat/party/body/binding_result_body.jsp" />
</tiles:insertDefinition>