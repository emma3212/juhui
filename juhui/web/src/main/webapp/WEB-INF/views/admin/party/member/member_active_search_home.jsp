<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/member/body/member_active_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-member-id="&{it.partyId}">
        <td><input type="checkbox" /></td>
        <td>&{it.pin}</td>
        <td>&{it.name}</td>
        <td>&{it.contactPerson}</td>
        <td>&{it.contactPhone}</td>
        <td>&{it.credit}</td>
        <td>&{it.recommender}</td>
        <td>&{it.manager}</td>
        <td>&{it.createdTime}</td>
        <td>
            <a class="J_edit" href="&{it.link}/0">编辑</a> |
            <a href="javascript:;" class="J_getPassword">密码</a> |
            <a class="J_edit" href="#?id=&{it.partyId}">积分</a> |
            <a class="J_maintenNumTrigger" href="javascript:;">维护次数</a>
            <input type="hidden" value="&{it.partyId}" class="J_memberId" />
        </td>
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/calendar, widget/dropdown, page/member/actived-list',function(){
            PW.page.member.activedList({
                pagi: {
                    renderTo: '#J_pagination',
                    juicerRender: '#tpl',
                    dataRender: '#J_template',
                    pageSize: 10,
                    url: '${website}admin/member/ajax/list/0',
                    configUrl: function(url,page,me,prevPaginationData){
                         return url+'/'+ page;
                    }
                },
                //操作类型
                operType: 'disabled'
            });
        });
    });
</script>