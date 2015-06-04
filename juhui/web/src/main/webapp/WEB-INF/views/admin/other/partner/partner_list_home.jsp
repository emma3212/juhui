<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}"/>
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/other/partner/body/partner_list_body.jsp"/>
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-id="&{it.id}">
        <td><input type="checkbox"/></td>
        <td>&{it.name}</td>
        <td>&{it.mobilePhone}</td>
        <td>&{it.createdTime}</td>
        <td><a href="javascript:;" class="J_view">查看</a></td>
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function (S) {
        S.use('widget/dropdown, page/partner/partner-list', function () {
            PW.page.partner.partnerList({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                pageSize: 10,
                url: '${website}admin/partner/ajax/list',
                configUrl: function (url, page, me, prevPaginationData) {
                    return url + '/' + page;
                }
            });
        });
    });
</script>