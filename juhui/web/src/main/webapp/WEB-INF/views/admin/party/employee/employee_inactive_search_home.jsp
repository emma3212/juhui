<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<tiles:insertDefinition name="admin">
    <tiles:putAttribute name="title" value="${webTitle}" />
    <tiles:putAttribute name="body" value="/WEB-INF/views/admin/party/employee/body/employee_inactive_search_body.jsp" />
</tiles:insertDefinition>

<script type="text/template" id="tpl">
    {@each list as it}
    <tr data-employee-id="&{it.partyId}">
        <td><input type="checkbox" /></td>
        <td>&{it.pinCode}</td>
        <td>&{it.name}</td>
        <td>&{it.email}</td>
        <td>&{it.phone}</td>
        <td>&{it.qq}</td>
        <td>&{it.role}</td>
        <td>
            <a class="J_edit" href="&{it.link}">编辑</a>
        </td>
    </tr>
    {@/each}
</script>
<script type="text/javascript">
    KISSY.ready(function(S){
        S.use('widget/dropdown, page/employee/disabled-list',function(){
            PW.page.employee.disabledList({
                pagi: {
                    renderTo: '#J_pagination',
                    juicerRender: '#tpl',
                    dataRender: '#J_template',
                    pageSize: 10,
                    url: '${website}admin/employee/ajax/inactive/list',
                    configUrl: function(url,page,me,prevPaginationData){
                        return url+'/'+ page;
                    }
                },
                //操作类型
                operType: 'abled'
            });
        });
    });
</script>