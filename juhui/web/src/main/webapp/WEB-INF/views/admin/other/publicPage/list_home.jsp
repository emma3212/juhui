<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/other/publicPage/body/list_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-page-id="&{it.id}">
        <td class="J_name">&{it.title}</td>
        <td class="J_link">${website}${publicPageUrl}/&{it.id}</td>
        <td><a class="J_edit" href="javascript:;">编辑</a></td>
        <td><a class="J_del" href="javascript:;">删除</a></td>
        <td>
            <a class="J_enter" href="${website}admin/public/page/content/&{it.id}/update">修改页面内容</a>
            | <a href="${website}${publicPageUrl}/&{it.id}">浏览</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/template" id="addTpl">
    <tr data-page-id="&{page.id}" data-oper-type="&{page.type}">
        <td>
            <input type="hidden" name="id" value="&{page.id}" />
            <input type="text" class="form-control input-small valid-icon J_pageName"
                   data-valid-rule="notNull & length(0,11)" name="title" value="&{page.name}" /></td>
        <td class="J_link">
        </td>
        <td><a class="J_save" href="javascript:;">保存</a></td>
        <td><a class="J_cancel" href="javascript:;">取消</a></td>
        <td></td>
    </tr>
</script>
<script type="text/template" id="editTpl">
    <tr data-page-id="&{page.id}" data-oper-type="&{page.type}">
        <td>
            <input type="hidden" name="id" value="&{page.id}" />
            <input type="text" class="form-control input-small valid-icon J_pageName"
                   data-valid-rule="notNull & length(0,11)" name="title" value="&{page.name}" /></td>
        <td class="J_link">&{page.link}</td>
        <td><a class="J_save" href="javascript:;">保存</a></td>
        <td><a class="J_cancel" href="javascript:;">取消</a></td>
        <td>
            <a class="J_enter" href="${website}admin/public/page/content/&{page.id}/update">修改页面内容</a>
            | <a href="${website}${publicPageUrl}/&{page.id}">浏览</a>
        </td>
    </tr>
</script>
<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('page/content/page', function () {
            PW.page.content.Page({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                themeCss: '.J_pagination_theme2',
                pageSize: 10,
                url: '/admin/public/page/ajax/list',
                configUrl: function (url, page, me, prevPaginationData) {
                    return url+'/'+ page;
                }
            });
        })
    })
</script>