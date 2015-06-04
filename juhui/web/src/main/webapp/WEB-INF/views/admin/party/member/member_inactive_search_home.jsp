<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/member/body/member_inactive_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-member-id="&{it.partyId}">
        <td><input type="checkbox" /></td>
        <td>&{it.pin}</td>
        <td>&{it.name}</td>
        <td>&{it.contactPerson}</td>
        <td>&{it.contactPhone}</td>
        <td>&{it.recommender}</td>
        <td >
            <input type="hidden" class="J_hiddenRegionName" value="&{it.regionName}">
            <input type="hidden" class="J_hiddenSiteName" value="&{it.siteName}">
            <input type="hidden" class="J_hiddenSiteId" value="&{it.siteId}">
            <input type="hidden" class="J_hiddenManagerId" value="&{it.managerId}">
            <a  href="javascript:;" class="J_selectManager">
                <span class="btn-margin-right">请选择</span>
            </a>
            <span class="J_addmanager">&{it.manager}</span>
        </td>
        <td>&{it.createdTime}</td>
        <td>
            <a class="J_edit" href="&{it.link}/2">编辑</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use(' widget/calendar, widget/dropdown, page/member/unactived-list',function(){
            PW.page.member.unactivedList({
                renderTo: '#J_pagination',
                juicerRender: '#tpl',
                dataRender: '#J_template',
                pageSize: 10,
                url: '${website}admin/member/ajax/list/2',
                configUrl: function(url,page,me,prevPaginationData){
                     return url+'/'+ page;
                }
            });
        });
    });
</script>