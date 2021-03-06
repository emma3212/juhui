<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!doctype html>
<html>
<head>
    <title><tiles:insertAttribute name="title" /></title>
    <tiles:insertAttribute name="head"/>
    <tiles:insertAttribute name="extendHead" />
</head>
<body>
    <tiles:insertAttribute name="header"/>
    <div class="page">
        <tiles:insertAttribute name="sidebar"/>
        <tiles:insertAttribute name="body"/>
    </div>
    <tiles:insertAttribute name="footer"/>
</body>
</html>